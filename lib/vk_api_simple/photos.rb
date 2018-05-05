require 'net/http'
require 'json'
require_relative 'photos/get_upload_server'
require_relative 'photos/save'
require_relative 'photos/upload_image'

module VkApiSimple
  # Clients requests
  class Photos
    include VkApiSimple::Photos::GetUploadServer
    include VkApiSimple::Photos::Save
    include VkApiSimple::Photos::UploadImage

    BASE_URI = 'https://api.vk.com/method/photos.'.freeze
    VK_API_VERSION = '5.74'.freeze

    attr_reader :token, :api_version

    def initialize(args = {})
      @token = args[:token]
      @api_version = args[:api_version] || VK_API_VERSION
    end
  end
end
