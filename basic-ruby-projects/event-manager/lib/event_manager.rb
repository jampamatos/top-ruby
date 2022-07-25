# frozen_string_literal: true

require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'
require 'time'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

def clean_homephone(homephone)
  phone = homephone.gsub(/[^\d]/, '')
  if phone.length == 10
    phone
  elsif phone.length == 11 && phone[0] == '1'
    phone[1..]
  end
end

def legislators_by_zipcode(zip)
  civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
  civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'

  begin
    civic_info.representative_info_by_address(
      address: zip,
      levels: 'country',
      roles: ['legislatorUpperBody', 'legislatorLowerBody']
    ).officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end
end

def save_thank_you_letter(id, form_letter)
  Dir.mkdir('output') unless Dir.exist?('output')

  filename = "output/thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts form_letter
  end
end

puts 'Event Manager Initialized!'
puts ''

reg_hours = []
reg_days = []
attendees = 0
valid_zip = 0
valid_phones = 0

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

template_letter = File.read('form_letter.erb')
erb_template = ERB.new template_letter

contents.each do |row|
  attendees += 1
  id = row[0]
  name = row[:first_name]
  phone = clean_homephone(row[:homephone])
  reg_date = Time.strptime(row[:regdate], '%m/%d/%y %k:%M')

  if phone
    puts "#{name}'s phone: #{phone}"
    valid_phones += 1
  else
    puts "#{name} does not have a valid number"
  end
  puts "Register date: #{reg_date}"
  puts ''

  reg_hours << reg_date.hour
  reg_days << reg_date.strftime('%A')

  zipcode = clean_zipcode(row[:zipcode])

  legislators = legislators_by_zipcode(zipcode)
  valid_zip += 1 unless legislators.length == 100

  form_letter = erb_template.result(binding)

  save_thank_you_letter(id, form_letter)
end

puts '--------'
puts 'REPORT:'
puts "Number of attendees: #{attendees}"
puts "Number of valid zip codes: #{valid_zip}."
puts "Number of valid phone numbers: #{valid_phones}."
peak_hours = reg_hours.tally.select { |_k, v| v == reg_hours.tally.values.max}.keys
peak_days = reg_days.tally.select { |_k, v| v == reg_days.tally.values.max}.keys
puts "Peak registration hour(s): #{peak_hours.join(', ')}."
puts "Peak registration day(s): #{peak_days.join('n ')}."
puts 'End of report.'
