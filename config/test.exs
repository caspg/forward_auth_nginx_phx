import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :forward_auth_nginx_phx, ForwardAuthNginxPhxWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "7v1eR3v6J4+FM1nGnTL4U7h8x8p7nCH7TqnCqCf9N2QLOyGeNUE9Xr9/Jl8hZ2Gm",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
