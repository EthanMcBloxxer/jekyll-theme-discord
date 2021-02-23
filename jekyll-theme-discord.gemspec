# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-discord"
  spec.version       = "1.0.0"
  spec.authors       = ["EthanMcBloxxer"]
  spec.email         = ["39684348+EthanMcBloxxer@users.noreply.github.com"]

  spec.summary       = "A one-page Jekyll theme reminiscent of Discord and their UI."
  spec.homepage      = "https://github.com/EthanMcBloxxer/jekyll-theme-discord"
  spec.license       = "GPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|LICENSE|readme|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
  spec.add_runtime_dependency "kramdown", "~> 2.3.0"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
