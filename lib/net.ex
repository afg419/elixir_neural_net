defmodule Net do

  # defstruct links: [], neurons: []
  #
  # def attach_link(source,link,target) do
  #   s = Neuron.new(source.value, source.links_in)
  #   l = Link.new(link.value,source)
  #   t = Neuron.new(target.value, [link| target.links_in])
  #   {s,l,t}
  # end
  #
  # def init_grid(net) do #net [[0,1],[0,2],[1,2],[1,1],...] where [0,1] means link from 0 to 1
  #   inputs = init_neurons(num_inputs)
  #   outputs = init_neurons(num_outputs)
  #   hidden_layers = List.duplicate(hidden_layers,0) |>
  #     List.map (fn x -> init_neurons(hidden_layer_size) end)
  #
  #   List.insert_at( [inputs | hidden_layers ], -1 , outputs)
  # end
  #
  # def init_neurons_link(count) do
  #   List.duplicate(count,0) |> Enum.map(fn x -> Neuron.new end)
  # end
  #
  # def init_links_for_grid([inputs, hidden_layers, outputs]) do
  #   494
  # end
end
