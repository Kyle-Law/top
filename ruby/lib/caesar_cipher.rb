def caesar_cipher(str, shift)
  shifted_str = ""

  str.each_char do |char|
    if char =~ /[A-Za-z]/
      base = char.ord < 91 ? 65 : 97
      shifted_char = ((char.ord - base + shift) % 26 + base).chr
      shifted_str += shifted_char
    else
      shifted_str += char
    end
  end

  shifted_str
end

puts caesar_cipher("What a string!", 5) # Outputs: "Bmfy f xywnsl!"

