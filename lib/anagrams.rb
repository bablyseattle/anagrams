class Anagrams
	def initialize(word1, word2)
		@word1 =  word1
		@word2 = word2
	end

	def if_word_anagram
		word1 = @word1.downcase
		word2 = @word2.downcase
		array1 = word1.split("")
		array2 = word2.split("")
		if (array1.sort == array2.sort)
			return "These words are anagrams."
		else return "These words are not anagrams."
		end

	end
end

puts "hi"