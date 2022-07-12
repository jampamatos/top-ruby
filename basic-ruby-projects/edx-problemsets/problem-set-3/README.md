# PS3 Hangman Documentation

## Functions

**1.** `#load_words()`

Returns a list of valid words. Words are strings of lowercase letters.

Depending on the size of the word list, this function may take a while to finish.

---

**2.** `#choose_word(word_list)`

`word_list` (list): list of words (strings)

Returns a word from wordlist at random

---

**3.** `get_guessed_word(secret_word, letters_guessed)`

`secret_word`: string, the word the user is guessing
`letters_guessed`: list, what letters have been guessed so far

Returns a string, comprised of letters and underscores that represents what letters in secretWord have been guessed so far.

---

**4.** `get_available_letters(letters_guessed)`

`lettersGuessed`: list, what letters have been guessed so far

Returns a string, comprised of letters that represents what letters have not yet been guessed.

---
