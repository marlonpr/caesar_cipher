def caesar_cipher(string, shift)
    string = string.split(//).map do |char|
        if char =~ /\w/
            result = (char.ord + shift)
            if result > 90 and result < 97 or result > 122
            (result -= 26).chr
            else
                result.chr
            end
        else
            char
        end
    end
    p string.join("")
end

caesar_cipher("What a string!", 5)




