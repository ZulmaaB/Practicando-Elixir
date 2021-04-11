defmodule CryptoApiWeb.ShoppingCartController do
  @moduledoc """
  ShoppingCartController
  Maneja las operaciones de endpoint para carrito de compras
  """
  use CryptoApiWeb, :controller

  @doc """
  Se agrega elemento al carrito
  """
  def add(conn, _params) do
    conn
    |> put_status(200)
    # Se manda llamar la funcion que esta en agents/counter.ex
    |> json(%{items: Counter.count()})
  end
end
