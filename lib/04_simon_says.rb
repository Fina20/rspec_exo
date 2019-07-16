def echo (a)
	return a
end

def shout (a)
	return a.upcase
end

def repeat (a, b=0)
	space = " "
	if b == 0
		a = a + space + a 
		return a 
	else
		a = a + (space + a) * (b - 1)
		return a
	end
end

def start_of_word(a, b)
	c = []
	n = 0
	b.times do 
		c.append(a[n])
		n += 1	
	end
	c = c.join()
	return c
end

def first_word (a)
	a = a.split(/\W/)
	return a[0]
end

def titleize (a)
	little_words = ["the", "and"]
	n = 0
	b = []
	a = a.split(/\W/)
	n = 0
	a.each do |cap|
		x = little_words.include? cap
		if x == true
			if n > 0
				b.append(cap)
			else
				b.append(cap.capitalize)
			end
		else
			b.append(cap.capitalize)
		end
		n += 1
	end
	return b.join(" ")
end