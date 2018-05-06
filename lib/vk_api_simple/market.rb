require 'rest-client'
require 'json'
require_relative 'market/add'

module VkApiSimple
  # Market requests
  class Market
    include VkApiSimple::Market::Add

    BASE_URI = 'https://api.vk.com/method/market.'.freeze
    VK_API_VERSION = '5.74'.freeze

    attr_reader :token, :api_version

    def initialize(args = {})
      @token = args[:token]
      @api_version = args[:api_version] || VK_API_VERSION
    end
  end
end
