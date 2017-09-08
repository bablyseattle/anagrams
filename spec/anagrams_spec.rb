require('anagrams')
require('rspec')

	

	describe("#anagrams.rb") do 

		it("show error if words are not meaningfull") do
			test = Word.new("trgr")
			expect(test.if_anagram_antigram("rtgr")).to eq("Please enter a meaning full word/phrase")
		end

		it("Check if two words are anagrams") do
			test = Word.new("ruby")
			expect(test.if_anagram_antigram("bury")).to eq("These words are anagrams.")
		end
		
		it("Check if two words are anagrams even if cases are different") do
			test = Word.new("Tea")
			expect(test.if_anagram_antigram("Eat")).to eq("These words are anagrams.")
		end

		it("If a word or phrase is an anagram, check if it's also a palindrome") do
			test = Word.new("madam")
			expect(test.if_anagram_antigram("madam")).to eq("These words are anagrams as well as palindromes")
		end

		it("If words aren't anagrams,check whether they are actually antigrams.") do
			test = Word.new("hi")
			expect(test.if_anagram_antigram("bye")).to eq("These words have no letter matches and are antigrams")
		end

		it("Checks for multiple words being anagrams or antigrams") do
			test = Word.new("nag *a* ram!")
			expect(test.if_anagram_antigram("!ana, gram")).to eq("These words are anagrams.")
		end

		it("if two words aren't anagrams, return how many letters from the argument are actual matches with the receiver") do
			test = Word.new("cat")
			expect(test.if_anagram_antigram("batty")).to eq("These words aren't anagrams but 2 letters match:,a,t")
		end
		it("Check if two words are anagrams") do
			test = Word.new("gjfnf")
			expect(test.if_actual_word?("acccck")).to eq(false)
		end

	end
