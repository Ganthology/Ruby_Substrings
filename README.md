# Substring
This is a small project from The Odin project, the project is to build a program that can check how many times a word repeats given a string and an array of strings. The output is a hash.
## Small Summary
There are two cases that need to be consider. 
1. The first base case is just a normal string containing a word, the program will check if the word include? the words in dictionary. 
2. The second case is more complex which is the string containing a sentence/multiple words. First, the program will split the string by the spaces, for each word in the array check if it includes the word in dictionary, then add 1 to the corresponding counter in the hash. 
3. What I did was defining a ```substring``` method for single word string, then defining another ```substrings``` method for multiple word string. The ```substrings``` method loop through the splitted string array and map them with the ```substring``` method. Since the ```substring``` return hashes, mapping using ```substring``` will return an array of hashes. ```reduce``` and ```merge!``` method are used to merge the array of hashes and add all the counters.