# frozen_string_literal: true

module Jekyll
  module ThemesControl
    class Munger
      extend Forwardable
      def_delegator :site, :config
      attr_reader :site

      def initialize(site)
        @site = site
      end

      def munge!
        return unless raw_theme
        unless munged?
          configure_theme
        end
        theme
      end

      private

      def munged?
        site.theme&.is_a?(Jekyll::ThemesControl::Theme)
      end

      def theme
        @theme ||= Theme.new(raw_theme)
      end

      def raw_theme
        config[CONFIG_KEY]
      end

      def configure_theme
        return unless theme

        site.config["theme"] = theme.name
        site.theme = theme
        site.send(:configure_include_paths)
      end

    end
  end
end
