module VkApiSimple
  class Photos
    # Get photos from server
    module Get
      def get(args = {})
        response = RestClient.get("#{BASE_URI}get?access_token=#{token}&album_id=#{args[:album_id]}&owner_id=#{args[:group_id]}&count=#{args[:count]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
