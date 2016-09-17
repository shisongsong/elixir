defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * n * n
  def quadruple(n), do: double(n) * double(n)
end

defmodule Factorial do
  def sum(0), do: 0

  def sum(n) when n > 0 do
    n + sum(n-1)
  end

  def gcd(x, y) when x >= 0 and y == 0 do
      x
  end

  def gcd(x, y) when x >= 0 and y > 0 do
      gcd(y,rem(x,y))
  end

  def func(p1, p2 \\ 2, p3 \\ 3, p4)

  def func(p1, p2, p3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

defmodule Chop do
  def guess(actual, range = low..high)
    when actual in low..high do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    _guess(actual, guess, range)
  end

  defp _guess(actual, actual, _),
    do: IO.puts "Yes, it's #{actual}!"

  defp  _guess(actual, guess, _low..high)
    when guess < actual,
    do: guess(actual, guess+1..high)

  defp _guess(actual, guess, low.._high)
    when guess > actual,
    do: guess(actual, low..guess-1)
end
