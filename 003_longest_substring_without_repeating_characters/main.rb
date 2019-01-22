# @param {String} s
# @return {Integer}

# sliding window

def length_of_longest_substring(s)

# version 1: 108 ms
#     string = ''
#     longest_string = ''
    
#     s.split('').each do |char|
#         string = string[(string.index(char)+1)..-1] if string.include? char        
#         string += char
#         longest_string = string if string.length > longest_string.length    
#     end
#     longest_string.length
   

# version 2: 92ms
    string_array =[]
    length_longest_string = 0
    s.chars.each do |char|
        index_char = string_array.index(char)
        string_array = string_array[(index_char+1)..-1] if index_char
        string_array << char
        length_longest_string += 1 if string_array.length > length_longest_string 
    end
    length_longest_string
     
end

