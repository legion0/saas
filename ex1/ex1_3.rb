#!/usr/bin/env ruby

class BookInStock
	def initialize(isbn, price)
		raise ArgumentError, "isbn cannot be empty" if isbn == ""
		raise ArgumentError, "price cannot be non positive" if price <= 0
		@isbn = isbn
		@price = price
	end

	attr_accessor :isbn
	attr_accessor :price

	def price_as_string()
		return "$%.2f" % price
	end
end

