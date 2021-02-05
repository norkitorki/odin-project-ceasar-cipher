def ceasar_cipher(str, shift)
  raise ArgumentError unless str.is_a?(String) && shift.is_a?(Integer)
  alphabet = ('a'..'z').to_a
  str.codepoints.map! do |c|
    if c.between?(97, 122)
      alphabet[(c % 97 + shift) % 26]
    elsif c.between?(65, 90)
      alphabet[(c % 65 + shift) % 26].upcase
    else
      c.chr
    end
  end.join
end
