# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?





#====================== SOLUTION ====================


num = 600851475143
while num > 1
        max = Math.sqrt(num)
        for i in 2..max
                if (num % i) == 0
                        puts i
                        num = num / i
                end
        end
end

