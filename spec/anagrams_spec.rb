require('anagrams')
require('rspec')

	

	describe("#anagrams.rb") do 

		it("show error if words are not meaningfull") do
			test = Word.new("trgr")
			expect(test.if_anagram_antigram("rtgr")).to eq("Please enter a meaning full word")
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
		

	end


    # Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

    # Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

    # If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."

    # Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)

    # If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

    # Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.
