def caesar_cipher(str, pos)
  ord = str.chars.map(&:ord)
  to_char = []

  for num in ord
    if num >= 97 && num <= 122 || num >= 65 && num <= 90
      num += pos
      num -= 26 if num > 122 || num > 90 && num < 97
    end

    to_char << num
  end

  to_char.map(&:chr).join
end

p caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
p caesar_cipher("middle-Outz", 2)
# "okffng-Qwvb"
p caesar_cipher("There's A starman waiting in the sky", 3)
# "Wkhuh'v d vwdupdq zdlwlqj lq wkh vnb "
p caesar_cipher("abcdefghijklmnopqrstuvwxyz", 2)
# "cdefghijklmnopqrstuvwxyzab"
