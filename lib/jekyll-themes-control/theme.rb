# frozen_string_literal: true

module Jekyll
  module ThemesControl
    class Theme < Jekyll::Theme

      def initialize(raw_theme)
        @raw_theme = raw_theme.to_s.downcase.strip
        super(@raw_theme)
      end

      def root
        path = "#{Dir.pwd}/_themes/#{@raw_theme}"
        @root ||= File.realpath path
      rescue Errno::ENOENT, Errno::EACCES, Errno::ELOOP
        raise "Path #{path} does not exist, is not accessible "\
        "or includes a symbolic link loop"
      end

    end
  end
end
