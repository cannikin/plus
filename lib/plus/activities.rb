module Plus
  class Activities

    # Retrieves the recent posts for a given user.
    def self.list(user_id, options={})
      endpoint_prefix = 'people'

      default_options = { :collection => :public, :alt => :json }
      options = default_options.merge(options)
      url = Plus::ENDPOINT + endpoint_prefix + '/' + user_id.to_s + '/activities/' + options.delete(:collection).to_s

      HTTParty.get(url, :query => options.merge(:key => Plus.options[:api_key]))
    end

    # Retrieves the detail for a given activity.
    def self.get(activity_id, options={})
      endpoint_prefix = 'activities'

      default_options = { :alt => :json }
      options = default_options.merge(options)
      url = Plus::ENDPOINT + endpoint_prefix + '/' + activity_id

      HTTParty.get(url, :query => options.merge(:key => Plus.options[:api_key]))
    end

    # Searches public activities for the given search term
    def self.search(query, options={})
      endpoint_prefix = 'activities'

      default_options = { :alt => :json }
      options = default_options.merge(options)
      url = Plus::ENDPOINT + endpoint_prefix

      HTTParty.get(url, :query => options.merge(:key => Plus.options[:api_key], :query => query))
    end

  end
end
