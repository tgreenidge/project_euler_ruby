# n! means n  (n  1)  ...  3  2  1

# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def n_factorial(n)
	if n == 0
		x_factorial = 1
	else
		x_factorial = 1
		for x in 1..n
		x_factorial *= x 
		end
	end
	return x_factorial
end

def sum_of_n_factorial_digits(n)
 	sum = 0
 	digits = n_factorial(n).to_s.chars.to_a
 	
 	digits.each do |digit|
 		sum += digit.to_i
 	end

 	return sum

end

puts sum_of_n_factorial_digits(100)
