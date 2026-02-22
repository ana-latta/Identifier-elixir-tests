defmodule IdentifierTest do
  use ExUnit.Case
  doctest Identifier

  # ==========
  # Particionamento de Equivalência
  # ==========

  test "identificador válido típico" do
    assert Identifier.valid?("abc123")
  end

  test "começa com número deve falhar" do
    refute Identifier.valid?("1abc")
  end

  test "contém caractere inválido" do
    refute Identifier.valid?("abc@123")
  end

  # ==========
  # Análise de Valor Limite
  # ==========

  test "2 caracteres (limite inferior inválido)" do
    refute Identifier.valid?("ab")
  end

  test "3 caracteres (limite inferior válido)" do
    assert Identifier.valid?("abc")
  end

  test "10 caracteres (limite superior válido)" do
    assert Identifier.valid?("abcdefghij")
  end

  test "11 caracteres (limite superior inválido)" do
    refute Identifier.valid?("abcdefghijk")
  end

  test "non-string input should be invalid" do
    refute Identifier.valid?(123)
  end
end
