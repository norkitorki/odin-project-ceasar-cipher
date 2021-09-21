# frozen-string-literal: true

def cipher(letter, shift)
  alphabet = ('a'..'z').to_a
  codepoint = letter.ord
  if codepoint.between?(97, 122)
    alphabet[(codepoint % 97 + shift) % 26]
  elsif codepoint.between?(65, 90)
    alphabet[(codepoint % 65 + shift) % 26].upcase
  else
    codepoint.chr
  end
end

def ceasar_cipher(string, shift)
  raise ArgumentError unless string.is_a?(String) && shift.is_a?(Integer)

  string.chars.map { |c| cipher(c, shift) }.join
end
