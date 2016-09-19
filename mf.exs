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

defmodule Mylist do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head+total)

  def sum1([]), do: 0
  def sum1([head | tail]), do: head + sum1(tail)

  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def max(), do: 0
  def max([]), do: 0
  def max([x]), do: x
  def max([head | tail]) do
    if head > max(tail) do
      head
    else
      max(tail)
    end
  end

  def caesar([], _n), do: []
  def caesar([head | tail], n)
    when head + n <= ?z,
    do: [head+n | caesar(tail, n)]
  def caesar([head | tail], n),
    do: [head+n-26 | caesar(tail,n)]

  def span(from, to) when from > to, do: []
  def span(from, to) do
    [from | span(from+1, to)]
  end
end

defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise "Can't swap a list with an odd number of elements"
end

defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time, 27, temp, rain] | for_location_27(tail)]
  end
  def for_location_27([_ | tail]), do: for_location_27(tail)

  def for_location([], _target_loc), do: []
  def for_location([head = [_, target_loc, _, _] | tail], target_loc) do
    [head | for_location(tail, target_loc)]
  end
  def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 27, 17, 0.468],
      [1366229222, 28, 15, 0.60],
      [1366232822, 26, 22, 0.095],
      [1366232822, 27, 21, 0.05],
      [1366232822, 28, 24, 0.03],
      [1366236422, 26, 17, 0.025]
    ]
  end
end
