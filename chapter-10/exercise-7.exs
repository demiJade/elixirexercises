defmodule MyList do
  def span(from, to) when to > from do
    _span([to - 1] ++ [to], from, 1)
  end
  def span(from, to) when from > to do
    _span([to + 1] ++ [to], from, 0)
  end
  def span(from, to) when from == to do
    [from]
  end
  
  def _span([head | tail], from, _) when head == from do
    ([head | tail])
  end
  def _span([head | tail], from, 1) when head > from do
    _span([ head - 1 | [head | tail]], from, 1)
  end
  def _span([head | tail], from, 0) when from > head do
    _span([head + 1 | [head | tail]], from, 0)
  end
end

defmodule ListPrime do
	def primes(n) do
		span = MyList.span(2, n)
		
	end
	def checkComposite(number), do: _checkComposite(number, number / 2)
	def _checkComposite(_, 1) do
		false
	end
	def _checkComposite(number, divisor) do
		rem(number, divisor) == 0 || _checkComposite(number, divisor - 1)
	end
end

