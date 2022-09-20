defmodule ForwardAuthNginxPhxWeb.Router do
  use ForwardAuthNginxPhxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ForwardAuthNginxPhxWeb do
    pipe_through :api
  end
end
