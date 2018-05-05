require 'httparty'

module VkApiSimple
  # Clients requests
  class Client
    include HTTParty

    VK_API_VERSION = '5.74'.freeze

    base_uri 'https://api.vk.com/method/'
    format :json

    attr_reader :token, :api_version

    def initialize(args = {})
      @token = args[:token]
      @api_version = args[:api_version] || VK_API_VERSION
    end
  end
end
