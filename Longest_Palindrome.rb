#checks all substrings starting at position x and tests if they're palindromes
	#returns the longest one found
def longest_palindrome(str)
  pal = ""
  (0..str.size).each do |x|
    i = 1
    while (i < (str.size-x)) do
	  if str[x,i].reverse == str[x,i]
	    pal = str[x,i] if pal.size < str[x,i].size
	  end
	  i+= 1
	end
  end
  pal
end

puts longest_palindrome(gets.to_s)