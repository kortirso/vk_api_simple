module VkApiSimple
  class Photos
    # Edit image at server
    module Edit
      def edit(args = {})
        response = RestClient.post("#{BASE_URI}edit?access_token=#{token}&owner_id=-#{args[:owner_id]}&photo_id=#{args[:photo_id]}&v=#{api_version}", caption: args[:caption])
        JSON.parse(response.body)
      end
    end
  end
end
