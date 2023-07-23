defmodule Poligon.Triangle do
  @moduledoc """
  A triangle poligon.
  """

  @type t() :: %__MODULE__{base: number(), height: number()}
  @enforce_keys [:base, :height]
  defstruct [:base, :height]

  def new(base, height) when is_number(base) and is_number(height) and base > 0 and height > 0 do
    struct(__MODULE__, base: base, height: height)
  end

  def new(_base, _height) do
    raise ArgumentError, "Base and height must both be positive numeric values greater than zero"
  end

  defimpl Poligon.Calc do
    @doc "Counts the sides of a triangle."
    @spec sides(@for.t()) :: number()
    def sides(_), do: 3

    @doc "Calculates the perimeter of a triangle."
    @spec perimeter(@for.t()) :: number()
    def perimeter(%@for{base: base, height: height}), do: base * height / 2

    @doc "Calculates the area of a triangle."
    @spec area(@for.t()) :: number()
    defdelegate area(poligon), to: __MODULE__, as: :perimeter
  end
end
