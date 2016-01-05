defmodule Neuron do
  defstruct value: 0, links_in: []

  def new do
    %Neuron{}
  end

  def new(value,links_in) do
    %Neuron{value: value, links_in: links_in}
  end

  def forward_prop(neuron) do
    cond do
      neuron.links_in == [] -> neuron.value
      true -> sigmoid(Enum.reduce(neuron.links_in, 0, fn(l, acc) -> acc + forward_prop(l.source) * l.weight end))
    end
  end

  def sigmoid(x) do
    1.0/(1+:math.exp(-x))
  end
end
