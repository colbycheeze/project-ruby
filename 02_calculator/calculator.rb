def add(n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum(nums)
	sum = 0
	nums.each {|x| sum+= x}	
	sum
end

def multiply(num, *nums)
	total = num * 1
	nums.each {|x| total *= x}
	total
end

def power(num, pow)
	num**pow
end

def factorial(num)
	num == 0 ? 1 : num * factorial(num - 1)
end