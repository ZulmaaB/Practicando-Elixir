defmodule Counter do
  use Agent

  def count do
    Agent.start_link(fn -> 1 end, name: __MODULE__)
    Agent.get_and_update(__MODULE__, fn state -> {state, state + 1} end)
  end
end
