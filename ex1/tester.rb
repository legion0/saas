#!/usr/bin/env ruby

require "./ex1_1"
require "./ex1_2"

$_errors = []

def _tester()
	_verify( sum([0, 1, 2]) == 3, "sum is not 3" )
	_verify( sum([4, 7, 3]) == 14, "sum is not 14" )
	_verify( sum([]) == 0, "sum is not 0" )

	_verify( max_2_sum([0, 1, 2, 3]) == 5, "max_2_sum is not 5" )
	_verify( max_2_sum([]) == 0, "max_2_sum is not 0" )
	_verify( max_2_sum([-9]) == -9, "max_2_sum is not -9" )
	_verify( max_2_sum([-6, -6]) == -12, "max_2_sum is not -12" )
	_verify( max_2_sum([-6, -9, -4]) == -10, "max_2_sum is not -10" )

	_verify( sum_to_n?([], -10) == false, "sum_to_n? failed test 1" )
	_verify( sum_to_n?([1], 1) == false, "sum_to_n? failed test 2" )
	_verify( sum_to_n?([0, 0, 0, 0], 1) == false, "sum_to_n? failed test 3" )
	_verify( sum_to_n?([0, 0], 0) == true, "sum_to_n? failed test 4" )
	_verify( sum_to_n?([-6, -9, -4], -10) == true, "sum_to_n? failed test 5" )

	_verify( binary_multiple_of_4?("100") == true, "100 is a multiple of 4" )
	_verify( binary_multiple_of_4?("0") == true, "A")
	_verify( binary_multiple_of_4?("1100") == true, "B")

	_verify( binary_multiple_of_4?("110") == false, "C")
	_verify( binary_multiple_of_4?("AAA") == false, "D")
	_verify( binary_multiple_of_4?("100A") == false, "E")

	if $_errors.length > 0
		$stderr.puts "Errors:", $_errors
		exit(1)
	else
		puts "All tests completed successfully :)"
	end
end

def _add_error(msg)
	$_errors << msg
end

def _verify(cond, msg)
	if not cond
		_add_error(msg)
	end
end

_tester()
