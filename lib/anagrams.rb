class Word
	def initialize(word)
		@word =  word
	end
	def if_word (word)
		array = word.downcase.split("")
		vowels = ["a", "e", "i","o","u"]
		result = []
		vowels.each { |item|
			if array.include? item
				result.push(item)
			end
		}
		if(result.length > 0) 
			return true
		else return false
		end
	end

	def if_anagram_antigram(word_to_compare)
		word1 = @word.downcase
		word2 = word_to_compare.downcase
		if (if_word(word1) && if_word(word2))
			
			array1 = word1.split("")
			array2 = word2.split("")
			array1.sort!
			array2.sort!
			result = ""
			counter = 0
			array1.each {|item|
				if (array2.include? item)
					counter += 1;
					result = result + "," +item
				end
			}

			if (array1 == array2)
				result =  "These words are anagrams."
				return result
			elsif (	counter > 0)
				return "These words aren't anagrams but #{counter} letters match:" + result	
			elsif (	counter = 0)
				return "These words have no letter matches and are antigrams"		 
			else return "These words are nither anagrams nor antigrams."
			end

		else return "Please enter a meaning full word"
		end
		
	end

	def if_palindrome
		array = @word.downcase.split("")
		array.each_index { |i|
			if(array[i] == array[array.length - 1 -i])
				return "This word is a palindrome"
			else return "This word is not a palindrome"
			end
		}
	end

	
end

# class Sentence < Word
# 	def initialize (string)
# 		@string = string
# 	end
# 	 def if_string_anagram_antigram(string_to_compare)
# 	 	string1 = @string.split(" ")
# 		string2 = string_to_compare.split(" ")
# 		string1.each { |word|
# 			if word.if_word == true
# 		}

# 		else return " Please enter a meaning full sentence"

# end

puts "hi"