defmodule ForwardAuthNginxPhxWeb.AuthController do
  use ForwardAuthNginxPhxWeb, :controller

  def show(conn, _params) do
    api_key =
      Plug.Conn.get_req_header(conn, "x-original-uri")
      |> List.first()
      |> parse_uri()
      |> get_api_key()

    case api_key do
      nil ->
        send_resp(conn, :unauthorized, "")

      _ ->
        send_resp(conn, :no_content, "")
    end
  end

  def parse_uri(nil), do: nil
  def parse_uri(uri), do: URI.new!(uri)

  defp get_api_key(%URI{query: nil}) do
    nil
  end

  defp get_api_key(%URI{query: query}) do
    query
    |> URI.decode_query()
    |> Map.get("key")
  end
end
