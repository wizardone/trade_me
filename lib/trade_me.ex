defmodule TradeMe do

  @main_url "https://api.tmsandbox.co.nz"
  @doc """
    Return your profile information
  """

  def profile do
    headers = ["Authorization": "OAuth oauth_consumer_key=#{Application.get_env(:trade_me, :key)}, oauth_token=#{Application.get_env(:trade_me, :oauth_token)}, oauth_signature=#{Application.get_env(:trade_me, :secret)}&#{Application.get_env(:trade_me, :oauth_token_secret)}, oauth_signature_method=\"PLAINTEXT\""]

    case %HTTPoison.Response{body: body} = HTTPoison.get!(@main_url <> "/v1/MyTradeMe/Summary.json", headers) do
      %HTTPoison.Response{body: body, status_code: 200} -> Poison.decode!(body)
      %HTTPoison.Response{status_code: 401} -> IO.puts "You are so fucked"
      %HTTPoison.Error{reason: reason} -> IO.inspect reason
    end
  end
end
