defmodule Link do
  defstruct id: 0, weight: 0, source: Neuron.new

  def new do
    %Link{}
  end

  def new(id,weight,source) do
    %Link{id: id, weight: weight, source: source}
  end
end
