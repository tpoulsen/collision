defmodule Collision.Vector do
  @moduledoc """
  Wrapper around vector creation functions.
  """
  @type vector :: Collision.Vector2.t

  @spec from_tuple(tuple) :: vector
  def from_tuple({_x, _y} = t), do: Collision.Vector2.from_tuple(t)
end

defprotocol Vector do
  @type vector :: Collision.Vector2.t

  @doc """
  Convert a vector to a tuple.

  ## Examples

  iex> Vector.to_tuple(%Collision.Vector2{x: 1.0, y: 1.5})
  {1.0, 1.5}
  """
  def to_tuple(vector)

  @doc """
  Add two vectors together.

  ## Examples

  iex> Vector.add(%Collision.Vector2{x: 1.0, y: 1.0}, %Collision.Vector2{x: 2.0, y: 2.0})
  %Collision.Vector2{x: 3.0, y: 3.0}
  """
  def add(vector, vector)

  @doc """
  Subtract two vectors.

  ## Examples

  iex> Vector.subtract(%Collision.Vector2{x: 4.0, y: 1.0}, %Collision.Vector2{x: 1.0, y: 4.0})
  %Collision.Vector2{x: 3.0, y: -3.0}
  """
  def subtract(vector, vector)

  @doc """
  Calculate the magnitude of a vector.

  ## Examples

  iex> Vector.magnitude(%Collision.Vector2{x: 3.0, y: 4.0})
  5.0
  """
  def magnitude(vector)

  @doc """
  Normalize a vector.

  ## Examples

  iex> Vector.normalize(%Collision.Vector2{x: 3.0, y: 4.0})
  %Collision.Vector2{x: 0.6, y: 0.8}
  """
  def normalize(vector)

  @doc """
  Calculate the dot product of two vectors.

  A negative value indicates they are moving away from each other,
  positive towards.

  ## Examples

  iex> Vector.dot_product(%Collision.Vector2{x: 3.0, y: 4.0}, %Collision.Vector2{x: -1.0, y: 2.0})
  5.0
  """
  def dot_product(vector, vector)

  @doc """
  Project a vector, v1, onto another, v2.

  ## Examples

  iex> Vector.projection(%Collision.Vector2{x: 3.0, y: 4.0}, %Collision.Vector2{x: -1.0, y: 2.0})
  %Collision.Vector2{x: -2.23606797749979, y: 4.47213595499958}
  """
  def projection(vector, vector)

  @doc """
  Right normal of a vector.

  ## Examples

  iex> Vector.right_normal(%Collision.Vector2{x: 3.0, y: 4.0})
  %Collision.Vector2{x: -4.0, y: 3.0}
  """
  def right_normal(vector)

  @doc """
  Left normal of a vector.

  ## Examples

  iex> Vector.left_normal(%Collision.Vector2{x: 3.0, y: 4.0})
  %Collision.Vector2{x: 4.0, y: -3.0}
  """
  def left_normal(vector)

  @doc """
  Per product of a pair of vectors.

  ## Examples

  iex> Vector.per_product(%Collision.Vector2{x: 3.0, y: 4.0}, %Collision.Vector2{x: -1.0, y: 2.0})
  -10.0
  """
  def per_product(vector, vector)
end
