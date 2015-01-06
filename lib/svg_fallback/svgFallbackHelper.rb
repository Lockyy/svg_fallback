require 'browser'

module SVGFallbackHelper

  def svg_fallback_tag path, options = {}
    extension = 'svg'
    unless browser.modern?
      if options[:fallback_extension]
        extension = options[:fallback_extension]
        options.delete :fallback_extension
      else
        extension = 'png'
      end
    end

    path = "#{path}.#{extension}"

    image_tag path, options
  end

end