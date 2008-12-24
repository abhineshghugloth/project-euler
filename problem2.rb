# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# Find the sum of all the even-valued terms in the sequence which do not exceed four million.

def fibonacci(upto)
	current = [1,2]
	while current.last <= upto
		last = current.length-1
		current << current[last] + current[last-1]
	end
	current.pop
	return current
end

puts fibonacci(4*10**6).inject(0){|sum,x| (x % 2 ==0)?(sum+x):(sum)}