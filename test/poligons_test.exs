defmodule PoligonsTest do
  use ExUnit.Case
  doctest Poligon

  test "an exception is throw if the lenght of a poligon side is not greater than zero" do
    assert_raise ArgumentError, fn -> Poligon.triangle(42, 0) end
    assert_raise ArgumentError, fn -> Poligon.quadrilateral(0) end
    assert_raise ArgumentError, fn -> Poligon.rectangle(-42, 42) end
  end

  test "the triangle calculates area correct" do
    p = Poligon.triangle(42, 73)
    assert Poligon.sides(p) == 3
    assert Poligon.perimeter(p) == 1533
    assert Poligon.area(p) == 1533
  end

  test "the quadrilateral calculates area correct" do
    p = Poligon.quadrilateral(42)
    assert Poligon.sides(p) == 4
    assert Poligon.perimeter(p) == 1764
    assert Poligon.area(p) == 1764
  end

  test "the rectangle calculates area correct" do
    p = Poligon.rectangle(42, 73)
    assert Poligon.sides(p) == 4
    assert Poligon.perimeter(p) == 3066
    assert Poligon.area(p) == 3066
  end
end
