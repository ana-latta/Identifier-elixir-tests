defmodule Identifier 
 @moduledoc """
  Provides functions for validating and classifying identifiers.

  This module contains the business logic used in the academic
  project for functional testing using ExUnit.
  """

  @min_length 3
  @max_length 10

  def valid?(string) when is_binary(string) do
    length = String.length(string)

    cond do
      length < @min_length -> false
      length > @max_length -> false
      not String.match?(string, ~r/^[a-zA-Z][a-zA-Z0-9_]*$/) -> false
      true -> true
    end
  end

  def valid?(_), do: false
end
