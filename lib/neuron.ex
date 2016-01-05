defmodule Neuron do
  defstruct value: 0, error: 0, links_in: [], links_out: []

  def new do
    %Neuron{}
  end

  def new(value,error,links_in,links_out) do
    %Neuron{value: value, error: error, links_in: links_in, links_out: links_out}
  end
end
