# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

def two_to_the_power_of(x)
	return 2 ** x
end

def sum_of_digits_for_2_to_the_power_of(x)
	sum = 0
	digits = two_to_the_power_of(x).to_s.chars.to_a

	digits.each do |digit|
		sum += digit.to_i
	end

	return sum
end

puts sum_of_digits_for_2_to_the_power_of(1000)

