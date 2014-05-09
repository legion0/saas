def hello(name)
	return "Hello, " + name
end

def starts_with_consonant?(s)
	if s.length == 0
		return false
	end
	is_cons = not(["a", "e", "i", "o", "u"].include?(s[0].downcase()))
	is_letter = ((s[0].downcase =~ /^[a-z]$/) == 0)
	return (is_letter and is_cons)
end

def binary_multiple_of_4? s
	begin
		return Integer(s, 2) % 4 == 0
	rescue  ArgumentError
		return false
	end
end

