defmodule Net.Link do

  alias Net.Link

  defstruct id: [0,0], weight: 0

  def new do
    %Link{}
  end

  def new([s,t], weight) do
    %Link{id: [s,t], weight: weight }
  end



  # def connect_to_target(link, neuron) do
  #   %{ neuron | links_in: [link | neuron.links_in] }
  # end
  #
  # def connect_source_to_target(source, link, target) do
  #   l = %{ link | source: source}
  #   connect_to_target(l, neuron)
  # end
end
