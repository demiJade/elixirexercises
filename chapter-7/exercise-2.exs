defmodule MyList do
  def max([head | [secondHead | tail]]) when head > secondHead do
    _max(tail, head)
  end
  def max([head | [secondHead | tail]]) when secondHead > head do
    _max(tail, secondHead)
  end
  def _max([], value) do
    value
  end
  def _max([head | tail], value) when head > value do
    _max(tail, head)
  end
  def _max([head | tail], value) when value > head do
    _max(tail, value)
  end
end

IO.inspect MyList.max([2,1,3])
IO.inspect MyList.max([5,6,8])
IO.inspect MyList.max([9,1,3])
