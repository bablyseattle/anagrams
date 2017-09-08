class Word
	def initialize(word)
		@word =  word
	end

	def if_word_anagram(wordtocompare)
		word1 = @word.downcase
		word2 = wordtocompare.downcase
		array1 = word1.split("")
		array2 = word2.split("")
		if (array1.sort == array2.sort)
			return "These words are anagrams."
		else return "These words are not anagrams."
		end

	end
	def if_word_palindrome
		array = @word.split("")
		array.each_index { |i|
			if(array[i] == array[array.length - 1 -i])
				return "This word is a palindrome"
			else return "This word is not a palindrome"
			end
		}
	end
end

puts "hi"