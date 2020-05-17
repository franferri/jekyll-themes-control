# frozen_string_literal: true

module Jekyll
  module ThemesControl
    class Theme < Jekyll::Theme

      def initialize(raw_theme)
        @raw_theme = raw_theme.to_s.downcase.strip
        super(@raw_theme)
      end

      def valid?
        return false unless @raw_theme
      end

      def root
        @root ||= File.realpath "#{Dir.pwd}/_themes"
      end

    end
  end
end
