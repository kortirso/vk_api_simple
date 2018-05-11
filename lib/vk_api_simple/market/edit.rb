module VkApiSimple
  class Market
    # Edit image in the market
    module Edit
      def edit(args = {})
        response = RestClient.post("#{BASE_URI}edit?access_token=#{token}&owner_id=-#{args[:owner_id]}&item_id=#{args[:item_id]}&category_id=#{args[:category_id]}&price=#{args[:price]}&main_photo_id=#{args[:main_photo_id]}&v=#{api_version}", name: args[:name], description: args[:description])
        JSON.parse(response.body)
      end
    end
  end
end
