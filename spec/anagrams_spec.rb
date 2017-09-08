require('anagrams')
require('rspec')

	

	describe("#anagrams.rb") do 
		it("Check if two words are anagrams") do
			test = Anagrams.new("bably", "lybab")
			expect(test.if_word_anagram).to eq("These words are anagrams.")
		end
		
		it("Check if two words are anagrams even if cases are different") do
			test = Anagrams.new("Bably", "lybab")
			expect(test.if_word_anagram).to eq("These words are anagrams.")
		end
	end


    # Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

    # Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

    # If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."

    # Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)

    # If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

    # Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.
