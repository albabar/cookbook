# frozen_string_literal: true

require 'contentful'

class Recipe
  CONTENT_TYPE = 'recipe'

  class << self
    def all
      client.entries(content_type: CONTENT_TYPE)
    end

    def find(id)
      client.entry(id)
    end

    private

    def client
      @client ||= Contentful::Client.new(
        space: ENV.fetch('CONTENTFUL_SPACE_ID'),
        access_token: ENV.fetch('CONTENTFUL_ACCESS_TOKEN')
      )
    end
  end
end
