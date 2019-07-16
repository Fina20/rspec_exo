def translate(a)
	vowels = ["a", "e", "i", "o", "u", "y"]
	b = []
	a = a.split(/\W/)
	if a.length == 2					#it "translates two words"
		a[0] = a[0].split('').append("ay").join
		b = a[1][0]
		a[1] = a[1].delete(a[1][0]).split('').append(b,"ay").join
		return a.join(" ")
	else
		c = vowels.include? a[0][0]
		if c == true 					#it "translates a word beginning with a vowel"
			b.append(a,"ay")
			return b.join
		else
			e = vowels.include? a[0][1]
			if e == true
				if a[0][0..1] == "qu" 	#it "counts 'qu' as a single phoneme"
					c = a[0][0..1]
					d = a[0].delete(a[0][0..1])
					b.append(d,c,"ay").join
					return b.join
				else					#it "translates a word beginning with a consonant"
					c = a[0][0]
					d = a[0].delete(a[0][0])
					b.append(d,c,"ay").join
					return b.join
				end
			else
				e = vowels.include? a[0][2]
				if e == true
					c = a[0][0..1]
					d = a[0].delete(a[0][0..1])
					b.append(d,c,"ay").join
					return b.join
				else					#it "translates a word beginning with three consonants"
					c = a[0][0..2]
					d = a[0].delete(a[0][0..2])
					b.append(d,c,"ay").join
					return b.join
				end				
			end
		end
	end
end