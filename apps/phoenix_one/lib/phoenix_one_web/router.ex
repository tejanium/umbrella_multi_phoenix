defmodule PhoenixOneWeb.Router do
  use PhoenixOneWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixOneWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/profile", PageController, :profile
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixOneWeb do
  #   pipe_through :api
  # end
end
