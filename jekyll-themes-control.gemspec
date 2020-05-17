# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)
require "jekyll-themes-control/version"

Gem::Specification.new do |s|
  s.name          = "jekyll-themes-control"
  s.version       = Jekyll::ThemesControl::VERSION
  s.authors       = ["Fran Ferri"]
  s.email         = ["franferri@gmail.com"]
  s.homepage      = "https://github.com/franferri/jekyll-themes-control"
  s.summary       = "Jekyll plugin for building Jekyll sites with any GitHub-hosted theme"

  s.files         = `git ls-files app lib`.split("\n")
  s.require_paths = ["lib"]
  s.license       = "GPLv3"

  s.add_dependency "addressable", "~> 2.0"
  s.add_dependency "jekyll", ">= 3.5", "< 5.0"
  s.add_dependency "jekyll-sass-converter", ">= 1.0", "<= 3.0.0", "!= 2.0.0"
  s.add_dependency "rubyzip", ">= 1.3.0", "< 3.0"

  s.add_development_dependency "pry", "~> 0.11"
  s.required_ruby_version = ">= 2.3.0"
end
