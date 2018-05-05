module VkApiSimple
  class Photos
    # Upload image to server
    module UploadImage
      def upload_image(args = {})
        response = RestClient.post(args[:url], file1: File.open(args[:filename]))
        JSON.parse(response.body)
      end
    end
  end
end
