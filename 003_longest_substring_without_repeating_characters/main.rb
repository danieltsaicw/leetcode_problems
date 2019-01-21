# @param {String} s
# @return {Integer}



def length_of_longest_substring(s)

    return 0 if s.empty?

    index = 0
    longest_substring = ""
    substring = ""
    max_length_substring = 0

    while index < s.length
        until substring.include? s[index]
             substring += s[index]
             index += 1
	           break if index == s.length
        end
        if substring.length > max_length_substring
            longest_substring = substring
            max_length_substring = substring.length
        end
        break if index == s.length

        substring = substring[(substring.index(s[index])+1)..(-1)] + s[index]
        if substring.length > max_length_substring
            longest_substring = substring
            max_length_substring = substring.length
        end

        index +=1

    end

    return longest_substring.length
end
