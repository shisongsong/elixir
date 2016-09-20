defmodule HotelRoom do
  def book(%{name: name, height: height})
  when height > 190 do
    IO.puts "Need extra long bed for #{name}"
  end

  def book(%{name: name, heihjt: height})
  when height < 182 do
    IO.puts "Need low shower controls for #{name}"
  end

  def book(person) do
    IO.puts "Need requalar bed for #{person.name}"
  end

  def test_data(_list, _, 0) do
    _list
  end

  def test_data(_list\\[], _person\\%{name: "shisong", height: 177}, n) do
    list_add = fn list, person, n ->
      list ++ [%{name: "#{person.name}#{n}", height: person.height + n}]
    end
    test_data(list_add.(_list, _person, n), _person, n-1)
  end

end
