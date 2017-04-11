defmodule <%= @project_name_camel_case %> do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))
  
  use MixTemplates,
    name:       :<%= @project_name %>,
    short_desc: "Template for ....",
    source_dir: "../template"

  
end
