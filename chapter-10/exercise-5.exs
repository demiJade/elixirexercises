defmodule MyEnum do
	def all?([], _), do: true
	def all?([head | tail], func), do: func.(head) && all?(tail, func)

	def each([head | tail], func), do: _each([func.(head)], tail, func)
	def _each(funced, [head | tail], func), do: _each(funced ++ [func.(head)], tail, func)
	def _each(funced, [], _), do: funced

	def filter([], _), do: []
	def filter([head | tail], func) do
		if func.(head) do
			[head] ++ filter(tail, func)
		else
			[] ++ filter(tail, func)
		end
	end

	def split([], _), do: {[],[]}
	def split(list, count), do: _split([], list, count)
	def _split(list, [head | tail], count) when length(list) == count do 
		{list, [head | tail]}
	end
	def _split(list, [head | tail], count) when length(list) < count do 
		_split(list ++ [head], tail, count)
	end
	def _split(list, [], _) do 
		{list, []}
	end

	def take(list, count), do: _take([], list, count)
	def _take(list, _, count) when length(list) == count do
		list
	end
	def _take(list, [head | tail], count) when length(list) < count do
		_take(list ++ [head], tail, count)
	end
	def _take(list, [], _) do
		list
	end
end