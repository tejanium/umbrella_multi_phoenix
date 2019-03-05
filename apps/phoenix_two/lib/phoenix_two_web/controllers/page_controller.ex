defmodule PhoenixTwoWeb.PageController do
  use PhoenixTwoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
