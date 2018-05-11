module VkApiSimple
  class Photos
    # Delete image from server
    module Delete
      def delete(args = {})
        response = RestClient.get("#{BASE_URI}delete?access_token=#{token}&owner_id=-#{args[:owner_id]}&photo_id=#{args[:photo_id]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
