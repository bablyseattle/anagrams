
module Methods
	def if_word? (word)
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

	def if_palindrome? (word)
		if word == word.reverse 
			return true
		else return false
		end
	end
	def if_actual_word?(word)
		array = word.split("")
		array.each_index { |i|
			if (array[i] == array[i+1] && array[i] == array[i+2])
				return false
			end
			}
			return true
			
	end
end

class Word
	include Methods
	def initialize(word)
		@word =  word
	end
	def if_anagram_antigram(word_to_compare)
		word1 = @word.downcase
		word2 = word_to_compare.downcase
		word1.gsub!(/[^0-9A-Za-z]/, '')
		word2.gsub!(/[^0-9A-Za-z]/, '')
		if (if_word?(word1) && if_word?(word2))
			
			array1 = word1.split("")
			array2 = word2.split("")
			array1.sort!
			array2.sort!
			result = ""
			counter = 0
			array1.each {|item|
				if (array2.include? item)
					if(!result.include? item)
						counter += 1;
						result = result + "," + item
					end 
				end
			}
			if (array1 == array2 && if_palindrome?(word1) )
				return "These words are anagrams as well as palindromes"
			elsif (array1 == array2)
				return  "These words are anagrams."
			elsif (	counter > 0)
				return "These words aren't anagrams but #{counter} letters match:" + result	
			else 
				return "These words have no letter matches and are antigrams"						 			 
			end

		else return "Please enter a meaning full word"
		end
		
	end

end


puts "Hello ! Whats your name ?"
name = gets.chomp
puts "Welcome #{name} enter two words/phrases to find out whether they are anagrams/antigrams"
puts "Enter first word/phrase"
word1 = gets.chomp
puts "Enter second word/phrase"
word2 = gets.chomp
test = Word.new(word1)
puts test.if_anagram_antigram(word2)