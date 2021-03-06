# PS3 Hangman Documentation

## Introduction

This game is based on the Problem Set 3 of MITx 6.00.1x's [Introduction to Computer Science and Programming Using Python on edX](https://learning.edx.org/course/course-v1:MITx+6.00.1x+2T2022/home). The original Problem is set to be resolved on Python, but as a mean of training Ruby syntax, I have decided to remake it on a Ruby file.

This Problem was really challenging -- but also fun -- to tackle, both on it's original Python form, and in it's transport to Ruby.

I wrote this document to document the functions and the workings of this Ruby file, as Ruby does not support a native docstring format.

---

## Functions

**1.** `#load_words()`

Returns a list of valid words. Words are strings of lowercase letters.

Depending on the size of the word list, this function may take a while to finish.

---

**2.** `#choose_word(word_list)`

`word_list` (list): list of words (strings)

Returns a word from wordlist at random

---

**3.** `#word_guessed?(secret_word, letters_guessed)`

`secret_word`: string, the word the user is guessing
`letters_guessed`: list, what letters have been guessed so far

Returns a boolean, `true` if all the letters of `secret_word` are in `letters_guessed`, and `false` otherwise

---

**4.** `#get_guessed_word(secret_word, letters_guessed)`

`secret_word`: string, the word the user is guessing
`letters_guessed`: list, what letters have been guessed so far

Returns a string, comprised of letters and underscores that represents what letters in secretWord have been guessed so far.

---

**5.** `#get_available_letters(letters_guessed)`

`lettersGuessed`: list, what letters have been guessed so far

Returns a string, comprised of letters that represents what letters have not yet been guessed.

---

**6.** `#hangman(secret_word)`

`secretWord`: string, the secret word to guess.

Starts up an interactive game of Hangman.

- At the start of the game, let the user know how many letters the secretWord contains.
- Ask the user to supply one guess (i.e. letter) per round.
- The user should receive feedback immediately after each guess about whether their guess appears in the computers word.
- After each round, you should also display to the user the partially guessed word so far, as well as letters that the user has not yet guessed.

Follows the other limitations detailed next.

---

## Requirements

1. The computer must select a word at random from the list of available words that was provided in `words.txt`.
2. The game must be interactive; the flow of the game should go as follows:
   - At the start of the game, let the user know how many letters the computer's word contains.
   - Ask the user to supply one guess (i.e. letter) per round.
   - The user should receive feedback immediately after each guess about whether their guess appears in the computer's word.
   - After each round, you should also display to the user the partially guessed word so far, as well as letters that the user has not yet guessed.
3. Some additional rules of the game:
   - A user is allowed 8 guesses. Make sure to remind the user of how many guesses s/he has left after each round.
   - Assume that players will only ever submit one character at a time (A-Z).
   - A user loses a guess only when s/he guesses incorrectly.
   - If the user guesses the same letter twice, do not take away a guess - instead, print a message letting them know they've already guessed that letter and ask them to try again.
   - The game should end when the user constructs the full word or runs out of guesses.
   - If the player runs out of guesses (s/he "loses"), reveal the word to the user when the game ends.

---

## Sample Output

The output of a winning game should look like this:

    Loading word list from file...
      55900 words loaded.
      Welcome to the game, Hangman!
      I am thinking of a word that is 4 letters long.
      -------------
      You have 8 guesses left.
      Available letters: abcdefghijklmnopqrstuvwxyz
      Please guess a letter: a
      Good guess: _ a_ _
      ------------
      You have 8 guesses left.
      Available letters: bcdefghijklmnopqrstuvwxyz
      Please guess a letter: a
      Oops! You've already guessed that letter: _ a_ _
      ------------
      You have 8 guesses left.
      Available letters: bcdefghijklmnopqrstuvwxyz
      Please guess a letter: s
      Oops! That letter is not in my word: _ a_ _
      ------------
      You have 7 guesses left.
      Available letters: bcdefghijklmnopqrtuvwxyz
      Please guess a letter: t
      Good guess: ta_ t
      ------------
      You have 7 guesses left.
      Available letters: bcdefghijklmnopqruvwxyz
      Please guess a letter: r
      Oops! That letter is not in my word: ta_ t
      ------------
      You have 6 guesses left.
      Available letters: bcdefghijklmnopquvwxyz
      Please guess a letter: m
      Oops! That letter is not in my word: ta_ t
      ------------
      You have 5 guesses left.
      Available letters: bcdefghijklnopquvwxyz
      Please guess a letter: c
      Good guess: tact
      ------------
      Congratulations, you won!

The output of a losing game should look like this:

    Loading word list from file...
      55900 words loaded.
      Welcome to the game Hangman!
      I am thinking of a word that is 4 letters long
      -----------
      You have 8 guesses left
      Available Letters: abcdefghijklmnopqrstuvwxyz
      Please guess a letter: a
      Oops! That letter is not in my word: _ _ _ _
      -----------
      You have 7 guesses left
      Available Letters: bcdefghijklmnopqrstuvwxyz
      Please guess a letter: b
      Oops! That letter is not in my word: _ _ _ _
      -----------
      You have 6 guesses left
      Available Letters: cdefghijklmnopqrstuvwxyz
      Please guess a letter: c
      Oops! That letter is not in my word: _ _ _ _
      -----------
      You have 5 guesses left
      Available Letters: defghijklmnopqrstuvwxyz
      Please guess a letter: d
      Oops! That letter is not in my word: _ _ _ _
      -----------
      You have 4 guesses left
      Available Letters: efghijklmnopqrstuvwxyz
      Please guess a letter: e
      Good guess: e_ _ e
      -----------
      You have 4 guesses left
      Available Letters: fghijklmnopqrstuvwxyz
      Please guess a letter: f
      Oops! That letter is not in my word: e_ _ e
      -----------
      You have 3 guesses left
      Available Letters: ghijklmnopqrstuvwxyz
      Please guess a letter: g
      Oops! That letter is not in my word: e_ _ e
      -----------
      You have 2 guesses left
      Available Letters: hijklmnopqrstuvwxyz
      Please guess a letter: h
      Oops! That letter is not in my word: e_ _ e
      -----------
      You have 1 guesses left
      Available Letters: ijklmnopqrstuvwxyz
      Please guess a letter: i
      Oops! That letter is not in my word: e_ _ e
      -----------
      Sorry, you ran out of guesses. The word was else. 
