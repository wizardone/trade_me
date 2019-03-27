defmodule TradeMe.Profile do
  alias TradeMe.Request

  @doc """
    Return your profile information
  """

  def get do
    Request.perform("/v1/MyTradeMe/Summary.json")
  end

  def sold_items do
    # case %HTTPoison.Response{body: body} = HTTPoison.get!(@main_url <> "/v1/MyTradeMe/SoldItems/Last45Days.json", @headers) do
    #   %HTTPoison.Response{body: body, status_code: 200} -> Poison.decode!(body)
    #   %HTTPoison.Response{status_code: 401} -> IO.puts "You are so fucked"
    #   %HTTPoison.Error{reason: reason} -> IO.inspect reason
    # end
  end

  def unsold_items do
    # case %HTTPoison.Response{body: body} = HTTPoison.get!(@main_url <> "/v1/MyTradeMe/UnSoldItems/Last45Days.json", @headers) do
    #   %HTTPoison.Response{body: body, status_code: 200} -> Poison.decode!(body)
    #   %HTTPoison.Response{status_code: 401} -> IO.puts "You are so fucked"
    #   %HTTPoison.Error{reason: reason} -> IO.inspect reason
    # end
  end
end
