# ForwardAuthNginxPhx

* run phoenix app
* run nginx web server
* open http://localhost:8080 in your browser

## Phoenix dummy auth server

First

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Nginx & Docker

Building the image:

```bash
docker build -t webserver ./nginx-stuff
```

Starting nginx server

```bash
docker run -it --rm -d -p 8080:80 --name web webserver
```

Follow logs:

```bash
docker logs -f web
```

Stopping:

```bash
docker stop web
```

## Resources

* [https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-subrequest-authentication/](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-subrequest-authentication/)
