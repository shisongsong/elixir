func1 = fn ->
  h1 = fn ->
    "hello"
  end

  h2 = fn ->
   "#{h1.()} world"
  end
end

IO.puts func1.().()
