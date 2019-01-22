class Solution:
    def lengthOfLongestSubstring(self, s):
	# 84ms, 86 percentile
        """
        :type s: str
        :rtype: int
        """
        string_array = []
        length_longest_string = 0
        for char in list(s) :       
            if char in string_array:
                index_char = string_array.index(char)
                string_array = string_array[(index_char+1):] 
            string_array.append(char)
            if len(string_array) > length_longest_string :
                length_longest_string += 1  
        return length_longest_string

