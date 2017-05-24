defmodule MyList do
  def span(from, to) when to > from do
    _span([to - 1 | to], from, 1)
  end
  def span(from, to) when from > to do
    _span([to + 1 | to], from, 0)
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

IO.inspect MyList.span(2,3)
IO.inspect MyList.span(1,5)
IO.inspect MyList.span(5,1)
IO.inspect MyList.span(1,1)
