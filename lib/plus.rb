require 'rubygems'
require 'httparty'
require_relative 'plus/activities'
require_relative 'plus/activities_result'
require_relative 'plus/activity'
require_relative 'plus/comments'
require_relative 'plus/people'

module Plus

  ENDPOINT = 'https://www.googleapis.com/plus/v1/'
  
  @options = {  :api_key => nil }

  attr_accessor :options
  
  extend self

end
