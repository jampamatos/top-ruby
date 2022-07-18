# frozen_string_literal: true

# Class that defines the 'hand', the random letters players will have to make up words each turn
class Hand
  attr_reader :size, :hand

  def initialize
    @hand = {}
    @vowels = 'aeiou'
    @consonants = 'bcdfghjklmnpqrstvwxyz'
    @size = 12
  end

  def deal_hand(num)
    num_vowel = num / 3
    num_cons = num - num_vowel

    @hand = merge_hand(num_vowel, num_cons)
  end

  def display_hand
    print 'Current hand: '
    @hand.each_key do |letter|
      (1..@hand[letter]).each do
        print letter, ' '
      end
    end
    puts ''
  end

  def update_hand(word)
    output = @hand.clone
    word.each_char { |c| output[c.to_s] -= 1 }
    output
  end

  private

  def random_vow(num)
    vows = {}
    (1..num).each do
      vow = @vowels.split('').sample
      vows[vow] = vows.fetch(vow, 0) + 1
    end
    vows
  end

  def random_cons(num)
    cons = {}
    (1..num).each do
      con = @consonants.split('').sample
      cons[con] = cons.fetch(con, 0) + 1
    end
    cons
  end

  def merge_hand(vow, con)
    vows = random_vow(vow)
    cons = random_cons(con)
    vows.merge(cons)
  end
end

hand = Hand.new
hand.deal_hand(hand.size)
hand.display_hand
# puts get_word_score('sought', hand)