WORDLIST_FILE = 'words.txt'

def load_words()
  wordlist = []

  File.open(WORDLIST_FILE, 'r') do |f|
    puts "Loading word list from file..."
    f.lines.each do |line|
      wordlist.push(*line.split)
    end 
  end

  puts "#{wordlist.length()} words loaded."
  wordlist
end

def choose_word(word_list)
  word_list.sample
end

word_list = load_words()

