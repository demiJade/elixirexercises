fizzbuzz = fn 
(0, 0, _ )-> "FizzBuzz"
(0, 1, _) -> "Fizz"
(1, 0, _) -> "Buzz"
(_, _, c) -> c
end

fizzbuzzrem = fn n
-> fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts fizzbuzzrem.(10)
IO.puts fizzbuzzrem.(11)
IO.puts fizzbuzzrem.(12)
IO.puts fizzbuzzrem.(13)
IO.puts fizzbuzzrem.(14)
IO.puts fizzbuzzrem.(15)
IO.puts fizzbuzzrem.(16)