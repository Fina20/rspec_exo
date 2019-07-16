def add(a,b)
	return a += b
end

def subtract(a,b)
	return a -= b
end

def sum(a)
	return a.sum
end

def multiply(a, b)
	return a * b
end

def power(a, b)
	return a**b 
end

def factorial(a)
	if a<=1
		return 1
	end
	z = 1
	y = a*(a-1)
	(a-2).times do 
		z += 1
		y = y * (a - z)
	end
	return y
end