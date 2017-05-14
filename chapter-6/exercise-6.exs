defmodule Chop do
	def guess(n, a..b) when div(a+b,2)== n do
		IO.puts n
	end
	def guess(n, a..b) when div(a+b,2) > n do
		IO.puts "Is it #{div(a+b,2)}"
		guess(n, a..div(a+b,2)-1)
	end
	def guess(n, a..b) when div(a+b,2) < n do
		IO.puts "Is it #{div(a+b,2)}"
		guess(n, div(a+b,2)+1..b)
	end
end

