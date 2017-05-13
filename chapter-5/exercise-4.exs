prefix = fn n ->
	fn x -> "#{n} #{x}"
	end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")