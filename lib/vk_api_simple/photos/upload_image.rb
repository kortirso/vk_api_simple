require 'net/http/post/multipart'

module VkApiSimple
  class Photos
    # Returns server's url for uploading photo
    module UploadImage
      def upload_image(args = {})
        uri = URI(args[:url])
        request = Net::HTTP::Post::Multipart.new(uri, 'file1' => UploadIO.new(File.open(args[:filename]), 'image/jpeg', 'image.jpg'))
        response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(request) }
        JSON.parse(response.body)
      end
    end
  end
end
