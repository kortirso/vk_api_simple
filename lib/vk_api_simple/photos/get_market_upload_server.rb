module VkApiSimple
  class Photos
    # Returns server's url for uploading photos
    module GetMarketUploadServer
      def get_upload_server(args = {})
        response = RestClient.get("#{BASE_URI}getMarketUploadServer?access_token=#{token}&main_photo=1&group_id=#{args[:group_id]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
