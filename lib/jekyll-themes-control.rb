# frozen_string_literal: true

require "jekyll"
require "fileutils"
require "tempfile"
require "addressable"
require "net/http"
require "zip"

$LOAD_PATH.unshift(File.dirname(__FILE__))

module Jekyll
  module ThemesControl

    autoload :Munger, "jekyll-themes-control/munger"
    autoload :Theme, "jekyll-themes-control/theme"
    autoload :VERSION, "jekyll-themes-control/version"

    CONFIG_KEY = "themes_control"
    LOG_KEY = "Themes Control:"
    TEMP_PREFIX = "jekyll-themes-control-"

    def self.init(site)
      Munger.new(site).munge!
    end
  end
end

Jekyll::Hooks.register :site, :after_reset do |site|
  Jekyll::ThemesControl.init(site)
end
