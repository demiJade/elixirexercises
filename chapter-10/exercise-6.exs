defmodule MyList do
	def flatten([head | tail]) when length(head) >= 1 do
		flatten(head) ++ flatten(tail)
	end
	def flatten([head | tail]) do
		[head] ++ flatten(tail)
	end
	def flatten([]) do
		[]
	end
end