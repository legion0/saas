#!/usr/bin/env ruby

require "./ex1"


def _tester()
	_verify( sum([0, 1, 2]) == 3, "sum is not 3" )
	_verify( sum([4, 7, 3]) == 14, "sum is not 14" )
	_verify( sum([]) == 0, "sum is not 0" )

	_verify( max_2_sum([0, 1, 2, 3]) == 5, "max_2_sum is not 5" )
	_verify( max_2_sum([]) == 0, "max_2_sum is not 0" )
	_verify( max_2_sum([-9]) == -9, "max_2_sum is not -9" )
	_verify( max_2_sum([-6, -6]) == -12, "max_2_sum is not -12" )
	_verify( max_2_sum([-6, -9, -4]) == -10, "max_2_sum is not -10" )

	puts "All tests completed successfully :)"
end

def _die(msg, exit_code = 1)
	if exit_code != 0
		$stderr.puts msg
	else
		puts msg
	end
	exit(exit_code)
end

def _verify(cond, msg)
	if not cond
		_die(msg)
	end
end

_tester()
