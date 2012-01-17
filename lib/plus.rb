require 'rubygems'
require 'httparty'
require 'plus/activities'
require 'plus/comments'
require 'plus/people'

module Plus

  ENDPOINT = 'https://www.googleapis.com/plus/v1/'
  
  @options = {  :api_key => nil }

  attr_accessor :options
  
  extend self

end
