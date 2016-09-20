defmodule MyModule do
  defmacro __using__(opts) do
    quote do
      import MyModule.Foo
      import MyModule.Bar

      alias MyModule.Repo
    end
  end

  defmodule Foo do
    def foo do
      IO.puts "foo"
    end
  end

  defmodule Bar do
    def bar, do: IO.puts "bar"
  end
end

defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  use MyModule
 # def get_and_update(%{} = map, key, fun) when is_function(fun, 1) do
 #   current =
 #     case :maps.find(key, map) do
 #       {:ok, value} -> value
 #       :error -> nil
 #     end

 #     case fun.(current) do
 #       {get, update} ->
 #         {get, :maps.put(key, update, map)}
 #       :pop ->
 #         {current, :maps.remove(key, map)}
 #       other ->
 #         raise "the given function must return a two-element tuple or :pop, got: #{inspect(other)}"
 #     end
 # end

 # def get_and_update(map, _key, _fun), do: :erlang.error({:badmap, map})

 # def fetch(map, key), do: :maps.find(key, map)

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{:name => name}) when name != "" do
    "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "missing name for badge"
  end

  def test do
    IO.puts foo
  end
end
