module VkApiSimple
  class Market
    # Delete image from market
    module Delete
      def delete(args = {})
        response = RestClient.get("#{BASE_URI}delete?access_token=#{token}&owner_id=-#{args[:owner_id]}&item_id=#{args[:item_id]}&v=#{api_version}")
        JSON.parse(response.body)
      end
    end
  end
end
