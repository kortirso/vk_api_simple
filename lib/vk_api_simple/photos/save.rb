module VkApiSimple
  class Photos
    # Save uploaded image at server
    module Save
      def save(args = {})
        response = RestClient.post("#{BASE_URI}save?access_token=#{token}&album_id=#{args[:album_id]}&group_id=#{args[:group_id]}&server=#{args[:server]}&photos_list=#{args[:photos_list]}&hash=#{args[:hash]}&v=#{api_version}", caption: args[:caption])
        JSON.parse(response.body)
      end
    end
  end
end
