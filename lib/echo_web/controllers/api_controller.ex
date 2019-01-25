defmodule EchoWeb.ApiController do
  use EchoWeb, :controller

  def echo(conn, params) do
    conn |> json(params)
  end
end
