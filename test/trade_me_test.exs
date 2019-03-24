defmodule TradeMeTest do
  use ExUnit.Case
  doctest TradeMe

  test "greets the world" do
    assert TradeMe.hello() == :world
  end
end
