defmodule Link do
  defstruct id: [0,0], weight: 0

  alias Link


  def new do
    %Link{}
  end

  def new([s,t], weight) do
    %Link{id: [s,t], weight: weight }
  end
end
