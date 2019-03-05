defmodule PhoenixTwoWeb.PageController do
  use PhoenixTwoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def today(conn, _params) do
    render(conn, "today.html")
  end
end
