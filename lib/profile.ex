defmodule TradeMe.Profile do
  alias TradeMe.Request

  @doc """
    Return your profile information
  """

  def get do
    Request.perform("/v1/MyTradeMe/Summary.json")
  end

  def sold_items do
    {:error, "You must supply a filter"}
  end

  def sold_items(filter) when is_binary(filter) do
    Request.perform("/v1/MyTradeMe/SoldItems/#{filter}.json")
  end

  def unsold_items do
    {:error, "You must supply a filter"}
  end

  def unsold_items(filter) when is_binary(filter) do
    Request.perform("/v1/MyTradeMe/UnSoldItems/#{filter}.json")
  end
end
