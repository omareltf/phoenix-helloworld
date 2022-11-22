defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, %{"xdomain" => xdomain_url}) do
    render conn, "index.html"
    Logger.debug "This happenedx: #{String.to_atom(xdomain_url)}"
  end
end
