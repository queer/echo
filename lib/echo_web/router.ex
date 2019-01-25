defmodule EchoWeb.Router do
  use EchoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EchoWeb do
    pipe_through :api
    get    "/", ApiController, :echo
    head   "/", ApiController, :echo
    post   "/", ApiController, :echo
    put    "/", ApiController, :echo
    delete "/", ApiController, :echo
    patch  "/", ApiController, :echo
  end

  scope "/api", EchoWeb do
    pipe_through :api
  end
end
