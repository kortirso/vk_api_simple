module VkApiSimple
  class Photos
    # Save uploaded image at server
    module SaveMarketPhoto
      def save_market_photo(args = {})
        response = RestClient.post("#{BASE_URI}saveMarketPhoto?access_token=#{token}&group_id=#{args[:group_id]}&server=#{args[:server]}&photo=#{args[:photo]}&hash=#{args[:hash]}&crop_data=#{args[:crop_data]}&crop_hash=#{args[:crop_hash]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
