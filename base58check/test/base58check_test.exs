defmodule Base58checkTest do
  use ExUnit.Case
  doctest Base58check

  test "encode hello" do
    assert Base58check.encode("hello") == "Cn8eVZg"
  end

  test "encode hello with leading zeros" do
    assert Base58check.encode(<<0x00000000000>> <> "hello") == "1Cn8eVZg"
  end

end
