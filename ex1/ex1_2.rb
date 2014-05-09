def hello(name)
	return "Hello, " + name
end

def starts_with_constant?(s)
	if s.length == 0
		return false
	end
	return ["a", "e", "i", "o", "u"].include? s[0].downcase
end

def binary_multiple_of_4? s
	begin
		return Integer(s, 2) % 4 == 0
	rescue  ArgumentError
		return false
	end
end

