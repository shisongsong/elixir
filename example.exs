defmodule Example do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end

# MF7
:io.format("~.5f~n", [2.33211231]) |> to_string |>  is_binary |> IO.puts

IO.puts System.get_env "HOME"
IO.puts Path.extname "../example.exs"
IO.puts System.cwd
