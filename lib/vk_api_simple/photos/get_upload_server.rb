module VkApiSimple
  class Photos
    # Returns server's url for uploading photos
    module GetUploadServer
      def get_upload_server(args = {})
        uri = URI("#{BASE_URI}getUploadServer?access_token=#{token}&album_id=#{args[:album_id]}&group_id=#{args[:group_id]}&v=#{api_version}")
        request = Net::HTTP::Get.new(uri)
        response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(request) }
        JSON.parse(response.body)
      end
    end
  end
end
