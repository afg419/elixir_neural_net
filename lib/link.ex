defmodule Link do
  defstruct weight: 0, source: Neuron.new

  def new do
    %Link{}
  end

  def new(weight,source) do
    %Link{weight: weight, source: source}
  end
end
