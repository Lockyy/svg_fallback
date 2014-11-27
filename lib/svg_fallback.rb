require "svg_fallback/version"
require 'svg_fallback/svgFallbackHelper'

module SVGFallback
  
  ActionView::Base.send :include, SVGFallbackHelper

end
