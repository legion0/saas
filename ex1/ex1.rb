def sum(arr)
	return arr.reduce(0, :+)
end

def max_2_sum(arr)
	if arr.length == 0
		return 0
	elsif arr.length == 1
		return arr[0]
	end

	max_val = arr.max
	if arr.count(max_val) > 1
		return max_val * 2
	end

	second_max = nil

	arr.each { |item|
		if item < max_val and (second_max == nil or item > second_max)
			second_max = item
		end
	}

	return max_val + second_max
end

def sum_to_n?(arr, n)
	if arr.length < 2
		return false
	end

	for i in 0 ... arr.length
		for j in i+1 ... arr.length
			if arr[i] + arr[j] == n
				return true
			end
		end
	end

	return false

end

