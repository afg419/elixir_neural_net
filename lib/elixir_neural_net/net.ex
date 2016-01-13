defmodule Net do
  defstruct links: [], neurons: []

  def new do
    %Net{}
  end

  def new(links, neurons) do
    %Net{ links: links, neurons: neurons }
  end

  def init_grid(net_rep) do #net_rep [[0,1],[0,2],[1,2],[1,1],...] where [0,1] means link from 0 to 1
    links = Enum.map(net_rep, fn [s,t] -> (Link.new([s,t], 0)) end)

    disconnected_neurons = List.flatten(net_rep)
    |> Enum.uniq
    |> Enum.map(fn neuron_id -> Neuron.new(neuron_id, []) end )

    neurons = Enum.reduce(links, disconnected_neurons, fn link, acc ->
      target_index = Enum.find_index(acc, fn x -> x.id == List.last(link.id) end)
      List.update_at(acc, target_index, fn target ->
        %{ target | links_in: [link | target.links_in] }
      end)
    end )

    %Net{links: links, neurons: neurons }
  end
end
