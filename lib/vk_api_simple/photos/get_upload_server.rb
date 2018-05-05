module VkApiSimple
  class Photos
    # Returns server's url for uploading photos
    module GetUploadServer
      def get_upload_server(args = {})
        response = RestClient.get("#{BASE_URI}getUploadServer?access_token=#{token}&album_id=#{args[:album_id]}&group_id=#{args[:group_id]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
