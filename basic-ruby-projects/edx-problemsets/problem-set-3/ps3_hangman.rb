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

def get_guessed_word(secret_word, letters_guessed)
  return_str = ''
  secret_word.each_char do |c|
    letters_guessed.include?(c) ? return_str += c : return_str += '_'
  end
  return_str
end

def get_available_letters(letters_guessed)
  
end