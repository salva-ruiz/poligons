defmodule Poligon.Quadrilateral do
  @moduledoc """
  A quadrilateral poligon.
  """

  @type t() :: %__MODULE__{length: number()}
  @enforce_keys [:length]
  defstruct [:length]

  def new(length) when is_number(length) and length > 0 do
    struct(__MODULE__, length: length)
  end

  def new(_length) do
    raise ArgumentError, "Length must be a positive numeric values greater than zero"
  end

  defimpl Poligon.Calc do
    @doc "Counts the sides of a quadrilateral."
    @spec sides(@for.t()) :: number()
    def sides(_), do: 4

    @doc "Calculates the perimeter of a quadrilateralsquare."
    @spec perimeter(@for.t()) :: number()
    def perimeter(%@for{length: length}), do: length * length

    @doc "Calculates the area of a quadrilateralsquare."
    @spec area(@for.t()) :: number()
    defdelegate area(poligon), to: __MODULE__, as: :perimeter
  end
end
