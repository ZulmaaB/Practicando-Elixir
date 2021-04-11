defmodule ShoppingMall.CartAgent do
  use Agent
  alias ShoppingMall.ShopingCart

  def start_link(initial_value) do
    IO.puts("start_link #{__MODULE__} with initial value")
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def value do
    Agent.get(__MODULE__, & &1)
  end

  def dispatch(op) do
    Agent.update(__MODULE__, fn cart ->
      ShopingCart.dispatch(cart, op)
    end)
  end
end
