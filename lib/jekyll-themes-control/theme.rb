# frozen_string_literal: true

module Jekyll
  module ThemesControl
    class Theme < Jekyll::Theme
      OWNER_REGEX = %r!(?<owner>[a-z0-9\-]+)!i.freeze
      NAME_REGEX = %r!(?<name>[a-z0-9\._\-]+)!i.freeze
      THEME_REGEX = %r!\A#{OWNER_REGEX}/#{NAME_REGEX}(?:#{REF_REGEX})?\z!i.freeze

      def initialize(raw_theme)
        @raw_theme = raw_theme.to_s.downcase.strip
        super(@raw_theme)
      end

      def name
        theme_parts[:name]
      end

      def owner
        theme_parts[:owner]
      end

      def theme_parts
        @theme_parts ||= uri.path[1..-1].match(THEME_REGEX) if uri
      end

      def name_with_owner
        [owner, name].join("/")
      end

      alias_method :nwo, :name_with_owner

      def valid?
        return false unless uri && theme_parts && name && owner

        host && valid_hosts.include?(host)
      end

      def root
        @root ||= File.realpath Dir.mktmpdir(TEMP_PREFIX)
      end

      def inspect
        "#<Jekyll::ThemesControl::Theme host=\"#{host}\" owner=\"#{owner}\" name=\"#{name}\"" \
        " root=\"#{root}\">"
      end

    end
  end
end
