defmodule ShoppingMall.ShopingCart do
  defstruct count: 0, status: "n/a"

  def dispatch(cart, op) do
    case op do
      "add" -> %{cart | count: cart.count + 1, status: "added item to the cart"}
      "substract" -> %{cart | count: cart.count - 1, status: "deleted item to the cart"}
    end
  end
end
