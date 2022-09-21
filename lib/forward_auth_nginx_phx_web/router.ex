defmodule ForwardAuthNginxPhxWeb.Router do
  use ForwardAuthNginxPhxWeb, :router

  get "/auth", ForwardAuthNginxPhxWeb.AuthController, :show
end
