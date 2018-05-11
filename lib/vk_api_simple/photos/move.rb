module VkApiSimple
  class Photos
    # Move photo to another album
    module Move
      def move(args = {})
        response = RestClient.get("#{BASE_URI}move?access_token=#{token}&owner_id=-#{args[:owner_id]}&target_album_id=#{args[:target_album_id]}&photo_id=#{args[:photo_id]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
