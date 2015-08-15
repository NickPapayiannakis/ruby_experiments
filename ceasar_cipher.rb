puts 'Enter the text to be ciphered'
text = gets.chomp
puts 'Enter a numeric shift factor'
shift_factor = gets.chomp

def cipher(text, shift_factor)
    text.each_byte do |byte|
        if byte.between?(65,90) || byte.between?(97,122)
            byte += (shift_factor.to_i % 26) 
            case
                when byte > 90 && byte < 97
                    byte = 64 + (byte - 90)
                    print byte.chr
                when byte > 122
                    byte = 96 + (byte - 122)
                    print byte.chr
                else 
                    print byte.chr
            end
        else
            print byte.chr
        end
    end
end

cipher(text, shift_factor)