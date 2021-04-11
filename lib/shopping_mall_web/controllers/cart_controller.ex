defmodule ShoppingMallWeb.CartController do
  use ShoppingMallWeb, :controller

  alias ShoppingMall.CartAgent

  def index(conn, _params) do
    render(conn, "index.html", cart: CartAgent.value())
  end

  def web_inc(conn, _params) do
    CartAgent.dispatch("add")

    conn
    |> redirect(to: "/cart")
  end

  def web_dec(conn, _params) do
    CartAgent.dispatch("substract")

    conn
    |> redirect(to: "/cart")
  end
end
