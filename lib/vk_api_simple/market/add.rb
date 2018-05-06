module VkApiSimple
  class Market
    # Save uploaded image at server
    module Add
      def add(args = {})
        response = RestClient.post("#{BASE_URI}save?access_token=#{token}&owner_id=-#{args[:owner_id]}&category_id=#{args[:category_id]}&price=#{args[:price]}&main_photo_id=#{args[:main_photo_id]}&v=#{api_version}", name: args[:name], description: args[:description])
        JSON.parse(response.body)
      end
    end
  end
end
