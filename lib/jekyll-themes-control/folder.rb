# frozen_string_literal: true

module Jekyll
  module ThemesControl
    class Folder

      def initialize(theme)
        @theme = theme
      end

      def run
        return if theme_dir_exists? && !theme_dir_empty?

        raise "The folder is not valid or don't exists: #{theme.root}"
      end

      private

      attr_reader :theme

      def theme_dir_exists?
        theme.root && Dir.exist?(theme.root)
      end

      def theme_dir_empty?
        Dir["#{theme.root}/*"].empty?
      end

    end
  end
end
