defmodule Template.Mixfile do
  use Mix.Project

  @name    :gen_template_template
  @version "0.1.5"
  
  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Dave Thomas <dave@pragdave.me>"]
  @github      "https://github.com/pragdave/#{@name}"

  @description """
  A template that generates blank template projects, intended to
  be used by folks creating their own templates.
  """
  
  
  ############################################################
  
  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  "~> 1.4",
      deps:    @deps,
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["Apache 2.0"],
      links:       %{
        "GitHub" => @github,
      },
#      extra:       %{ "type" => "a_template_for_mix_gen" },
    ]
  end
end
