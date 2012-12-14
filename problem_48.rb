# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

def n_to_nth_power(n)
	return n**n
end

def sum_n_powers(n)
	sum = 0

	for x in 1..n
		sum += n_to_nth_power(x)
	end

	return sum
end

answer = sum_n_powers(1000).to_s

puts "The last ten digits of the series 1^1 + 2^2 + 3^3 + ... + 1000^1000 is #{answer[-10, answer.length-1]} "