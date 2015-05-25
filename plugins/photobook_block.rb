# Title: Photobook for Octopress
# Author: Manuel
# Description: Alignment for photos.
#
# Example:
# {% photobook pb002 Greyscale %}
#   img006.jpg
#   img007.jpg
#   img008.jpg
#   img009.jpg
# {% endphotobook %}

require './plugins/raw'
require 'mini_magick'
require 'fileutils'
require 'pathname'

module Jekyll

  class PhotobookBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)

      if markup =~ /(\w+)\s(\w+)/
        @name = $1
        @title = $2
        @dir = Pathname.new('source/data/photobook') + @name
      end

      FileUtils.mkdir_p @dir
      FileUtils.mkdir_p @dir + 'tmp'
      FileUtils.mkdir_p @dir + '_org'
      super
    end

    def render(context)
      @config = context.registers[:site].config
      @web = Pathname.new(@config['root']) + @config['data_dir'] + 'photobook' + @name

      set = <<-BLOCK
        <section class="thumbnails">
      BLOCK
        .strip

      super.strip.each_line do |src|
        if File.file? path = @dir + '_org' + src.strip
          unless File.file? thumb = @dir + 'tmp' + src.strip
            image = MiniMagick::Image.open(path)
            image.resize "150x150"
            image.format "jpg"
            image.write thumb
          end
          set += <<-BLOCK
            <img class='thumbnail' src='#{@web + 'tmp' + src.strip}' alt='#@title' />
          BLOCK
            .strip
        end
      end

      set += <<-BLOCK
        </section>
      BLOCK
        .strip

      TemplateWrapper.safe_wrap(set.strip)
    end
  end
end

Liquid::Template.register_tag('photobook', Jekyll::PhotobookBlock)
