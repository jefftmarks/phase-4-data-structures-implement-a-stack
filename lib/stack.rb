require 'pry'

class Stack

	def initialize(limit = nil)
		@stack = []
		@limit = limit
	end

	def push(value)
		if self.full?
			raise "Stack Overflow"
		else
			@stack.push(value)
		end
	end

	def pop
		@stack.pop
	end

	def peek
		@stack.last
	end

	def size
		@stack.size
	end

	def empty?
		@stack.empty?
	end

	def full?
		@stack.size == @limit
	end

	def search(value)
		@stack.each_with_index do | item, index |
			return self.size - index - 1 if item == value
		end

		-1
	end

end

# binding.pry
