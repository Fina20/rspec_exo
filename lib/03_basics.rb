def who_is_bigger(a,b,c)
	tab = [a, b, c]
	checker= tab.include? nil
	if checker == true
		return "nil detected"
	else
		b = tab.max
		if b == tab[0]
			return "a is bigger"
		elsif b == tab[1]
			return "b is bigger"
		else
			return "c is bigger"
		end
	end
end

def reverse_upcase_noLTA(a)
	return a.upcase.reverse!.tr("LTA","")	
end

def array_42(a)
	return a.include? 42
end

def magic_array(a)
	a = a.flatten.sort.uniq.map{|b| b*2}.delete_if {|c| c%3 == 0}
	return a
end