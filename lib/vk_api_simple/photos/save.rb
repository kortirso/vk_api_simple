module VkApiSimple
  class Photos
    # Save uploaded image at server
    module Save
      def save(args = {})
        uri = URI("#{BASE_URI}save?access_token=#{token}&album_id=#{args[:album_id]}&group_id=#{args[:group_id]}&server=#{args[:server]}&photos_list=#{args[:photos_list]}&hash=#{args[:hash]}&v=#{api_version}")
        req = Net::HTTP::Post.new(uri)
        req.set_form_data(caption: args[:caption])
        res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(req) }
        JSON.parse(res.body)
      end
    end
  end
end
