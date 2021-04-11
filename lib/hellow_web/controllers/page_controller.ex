defmodule HellowWeb.PageController do
  use HellowWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
