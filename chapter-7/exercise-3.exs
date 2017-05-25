defmodule MyList do
  def caesar([head | tail], n) do
    if [head + n] > 'z' do
      [head + n - 26] ++ caesar(tail, n)
    else
      [head + n] ++ caesar(tail, n)
    end
    
  end
  def caesar([], _), do: []
end