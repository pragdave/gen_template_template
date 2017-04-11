defmodule Mix.Gen.Template.Template do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))
  
  use MixTemplates,
    name:       :template,
    short_desc: "Template for creating new templates",
    source_dir: "../template"

  def populate_assigns(assigns, options) do
    IO.inspect options
    IO.inspect assigns
  end
end
