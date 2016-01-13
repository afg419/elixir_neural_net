defmodule Neuron do
  defstruct id: 0, links_in: []

  alias Neuron

  def new do
    %Neuron{}
  end

  def new(id) do
    %Neuron{id: id, links_in: []}
  end

  def new(id, links_in) do
    %Neuron{id: id,  links_in: links_in}
  end

  def sigmoid(x) do
    1.0/(1+:math.exp(-x))
  end
end
