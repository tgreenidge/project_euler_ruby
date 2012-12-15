# The Fibonacci sequence is defined by the recurrence relation:

# Fn = F_n-1 + F_n-2, where F_1 = 1 and F_2 = 1.
# Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?

first = 1
second = 2

nth_term = 3 # starts from 2 since 2 is the first even term

new_term = 0


while new_term.to_s.length < 1000
		nth_term += 1
		new_term = first + second   #produces the new term of the sequence, from the 4rd term onwards
		first = second
		second = new_term
		
		
end 

puts "\n The first tem in the Fibonacci sequence whose term contains 1000 digits is #{nth_term} "