class Word
	def initialize(word)
		@word =  word
	end

	def if_anagram_antigram(wordtocompare)
		word1 = @word.downcase
		word2 = wordtocompare.downcase
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

	def if_word
		array = @word.downcase.split("")
		vowels = ["a", "e", "i","o","u"]
		vowels.each { |item|
			if array.include? item
				return "This is a word"
			else return "This is not a word"
			end
		}
	end
end

class Sentence
	 
end

puts "hi"