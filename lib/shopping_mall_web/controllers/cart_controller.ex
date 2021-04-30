defmodule ShoppingMallWeb.CartController do
  use ShoppingMallWeb, :controller

  alias ShoppingMall.CartAgent

  #A GET request to /users will invoke the index action to show all the users.
  #Get request /carts invoke index actions to show all the users.
  def index(conn, _params) do
    render(conn, "index.html", cart: CartAgent.value())
  end

  def web_inc(conn, _params) do
    CartAgent.dispatch("add")

    conn
    |> redirect(to: "/cart")
  end

  def new(conn,params) do
    conn
    |> redirect(to: "/cart")
  end
  #A GET request to /users/:id will invoke the show action with an id to show an individual user identified by that ID.
  #A GET request to /carts/:id will invoke the show action with an id to show an individual user identified by that ID.
  def show(conn, params) do
    conn
    |> redirect(to: "/cart")
  end

  def create(conn, params) do
    conn
    |> redirect(to: "/cart")
  end

  def edit(conn, params) do
    conn
    |> redirect(to: "/cart")
  end

  def web_dec(conn, _params) do
    CartAgent.dispatch("substract")

    conn
    |> redirect(to: "/cart")
  end
end
