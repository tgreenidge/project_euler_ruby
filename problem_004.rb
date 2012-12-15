# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers. 

array_1 = []
array_2 = []

for n in 100..999
	array_1 << n
	array_2 << n
end

largest_palindrome = 0

for x in 0..(array_1.length-1)
	
	array_2.each do |num|

		 product = num * array_1[x]
		 
		if product.to_s == product.to_s.reverse
			if product >= largest_palindrome
				largest_palindrome = product
			end
		 end
	end	
end

puts largest_palindrome



