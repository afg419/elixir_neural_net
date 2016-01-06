defmodule Neuron do
  defstruct id: 0, links_in: []

  def new do
    %Neuron{}
  end

  def new(id,links_in) do
    %Neuron{id: id,  links_in: links_in}
  end

  def forward_prop(neuron, inputs) do
    cond do
      neuron.links_in == [] -> Enum.fetch!(inputs, neuron.id)
      true -> sigmoid(Enum.reduce(neuron.links_in, 0, fn(l, acc) -> acc + forward_prop(l.source,inputs) * l.weight end))
    end
  end

  def set_input(neuron, input) do
    %{neuron | input: input}
  end

  def sigmoid(x) do
    1.0/(1+:math.exp(-x))
  end
end
