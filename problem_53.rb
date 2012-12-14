# There are exactly ten ways of selecting three from five, 12345:

# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

# In combinatorics, we use the notation, 5C3 = 10.

# In general,

# nCr =	n!/r!(nr)!
# ,where r  n, n! = n(n1)...321, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

# How many, not necessarily distinct, values of  nCr, for 1 < n < 100, are greater than one-million?

def n_factorial(n)
	x_factorial = 1
	
	if n == 0
		x_factorial = 1
	else

		for x in 1..n
			x_factorial *= x 
		end
	end

	return x_factorial
end


def n_C_r(n,r)

	answer = (n_factorial(n)) / ((n_factorial(r)) * (n_factorial((n-r))))
	return answer
end



puts n_C_r(5,5)

count = 0

for n in 1..100
	for r in 1..n
		count +=1 if ( n_C_r(n, r) > 1_000_000 )
	end
end

puts "How many, not necessarily distinct, values of  nCr, for 1 < n < 100, are greater than one-million? #{count}"