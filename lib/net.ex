defmodule Net do

  defstruct links: [], neurons: []

  def attach_link(source,link,target) do
    source = Neuron.new(source.value,[])
    link = Link.new(link.value,source)
    target = Neuron.new(target.value,[link])
  end

end
