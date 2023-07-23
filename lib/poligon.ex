defmodule Poligon do
  @moduledoc """
  Makes calculates with regular poligons.
  """

  defdelegate triangle(base, height), to: Poligon.Triangle, as: :new
  defdelegate quadrilateral(length), to: Poligon.Quadrilateral, as: :new
  defdelegate rectangle(base, height), to: Poligon.Rectangle, as: :new

  defdelegate sides(poligon), to: Poligon.Calc
  defdelegate perimeter(poligon), to: Poligon.Calc
  defdelegate area(poligon), to: Poligon.Calc

  defprotocol Calc do
    @moduledoc """
    Protocol for different regular poligons.
    """

    @doc "Counts the sides of a poligon."
    @spec sides(t) :: number()
    def sides(_poligon)

    @doc "Calculates the perimeter of a poligon."
    @spec perimeter(t) :: number()
    def perimeter(_poligon)

    @doc "Calculates the area of a poligon."
    @spec area(t) :: number()
    def area(_poligon)
  end
end
