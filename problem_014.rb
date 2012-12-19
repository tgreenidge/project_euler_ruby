# The following iterative sequence is defined for the set of positive integers:

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 -> 40  -> 20 -> 10 -> 5 -> 16 ->  8 -> 4 ->  2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet
# (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.



def get_new_term(new_term, num_of_terms)
	if new_term % 2 == 0
		new_term /= 2
		num_of_terms += 1
	else
		new_term = 3 * new_term + 1
		num_of_terms += 1		
	end

	return new_term, num_of_terms
end

def calculate_chain_length(starting_term)
	number_of_terms = 1

	newest_term, number_of_terms = get_new_term(starting_term, number_of_terms)

	while newest_term != 1
		newest_term, number_of_terms = get_new_term(newest_term, number_of_terms)
	end

	return number_of_terms
end

puts "Be patient, as this takes a while for ruby to compute....."

largest_chain_length = 1

 for n in 1..1_000_000 
	if calculate_chain_length(n) > largest_chain_length
 		largest_chain_length = calculate_chain_length(n) 
		starting_number_under_1mil = n
	end
 end



puts "The starting number, under one million, the produces the longest chain is....."
puts "#{starting_number_under_1mil}, with #{largest_chain_length} terms"







