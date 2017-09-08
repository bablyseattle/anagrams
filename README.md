# _Anagrams And Antigrams_

#### _Epicodus Ruby Project_

#### By _**Bably Kumari**_

## Description

 it will find Anagram and Antigram word .Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters.A word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye".

## Setup/Installation Requirements

* _Clone from github:
* _Open in browser of your choice_

## Specifications


* Show error if words are not meaningfull.
	* Example input1: tmty
	* Example input2: mtyt
	* Example output: Please enter a meaning full word.

* Check if two words are anagrams
	* Example input1: ruby
	* Example input2: bury
	* Example output: These words are anagrams.

* Account for the possibility that words might have different cases but should still be anagrams.
	* Example input1: Tea
	* Example input2: Eat
	* Example output: These words are anagrams.

* If a word or phrase is an anagram, check if it's also a palindrome.
	* Example input1: Madam
	* Example input2: Madam
	* Example output: These words are anagrams as well as palindromes.

* If phrases aren't anagrams, the method should check whether they are actually "antigrams"
	* Example input1: hi
	* Example input2: bye
	* Example output:These words have no letter matches and are antigrams.

* Account for multiple words being anagrams or "antigrams"
	* Example input1: nag *a* ram!
	* Example input2: !ana, gram
	* Example output: These words are anagrams.

* Method to check if inputs are actual words.
	* Example input1: acccck
	* Example input2: kvdndcj
	* Example output: false

## Known Bugs

_There are no known bugs at this time._

## Support and contact details

_please contact: bablyhyd@gmail.com for comments, feedback and support._

## Technologies Used

  * Ruby

### License

Copyright (c) 2017 **_Bably Kumari_**

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
