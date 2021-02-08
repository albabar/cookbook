# frozen_string_literal: true

require 'kramdown'

class Markdown
  class << self
    def parse(content)
      Kramdown::Document.new(content).to_html
    end
  end
end
