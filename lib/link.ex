defmodule Link do
  defstruct weight: 0, source: Neuron.new, target: Neuron.new

  def new do
    %Link{}
  end

  def new(weight,source,target) do
    %Link{weight: weight, source: source, target: target}
  end
end
