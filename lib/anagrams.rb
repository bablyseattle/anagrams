class Anagrams
	def initialize(word1, word2)
		@word1 =  word1
		@word2 = word2
	end

	def if_word_anagram
		array1 = []
		array2 = []
		array1 = @word1.split("")
		array2 = @word2.split("")
		if (array1.sort == array2.sort)
			return true
		else return false
		end

	end
end

puts "hi"