require 'pry'

class Stack
	attr_reader :stack

	def initialize
		@stack = []
	end

	def push(value)
		self.stack.push(value)
	end

	def pop
		self.stack.pop
	end

	def peek
		self.stack.last
	end

end

# binding.pry
