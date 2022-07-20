require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_filename = 'hamlet.txt'
File.open(local_filename, 'w'){ |file| file.write(URI.open(url).read) }

File.open(local_filename, 'r') do |file|
  file.readlines.each_with_index do |line, idx|
    puts line if (idx + 1) % 42 == 0
  end
end