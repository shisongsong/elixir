function2 = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, third -> third
end

function3 = fn
  n -> function2.(rem(n, 3), rem(n, 5), n)
end

function4 = fn
  str -> fn
    str2 ->
      "#{str} #{str2}"
    end
end


#IO.puts function2.(0, 0, 0)
#IO.puts function2.(0, :b, :c)
#IO.puts function2.(:a, 0, :c)
#IO.puts function2.(:a, :b, :c)
#
#IO.puts function3.(10)
#IO.puts function3.(11)
#IO.puts function3.(12)
#IO.puts function3.(13)
#IO.puts function3.(14)
#IO.puts function3.(15)
#IO.puts function3.(16)
mrs = function4.("Mrs")
IO.puts mrs.("Smith")

# function5
Enum.map [1, 2, 3, 4], &(IO.puts &1 + 2)
Enum.map [1, 2, 3, 4], &(IO.inspect &1)
