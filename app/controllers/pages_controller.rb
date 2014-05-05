class PagesController < ApplicationController
  def home

  	@user = User.all

require 'oauth'
require 'json'
require 'rest_client'
 
# Fill the keys and secrets you retrieved after registering your app
api_key = ENV['LINKEDIN_API_KEY']
api_secret = ENV['LINKEDIN_SECRET_KEY']

if user_signed_in? 

user_token = current_user.token
user_secret = current_user.secret
 
# Specify LinkedIn API endpoint
configuration = { :site => 'https://api.linkedin.com' }
 
# Use your API key and secret to instantiate consumer object
consumer = OAuth::Consumer.new(api_key, api_secret, configuration)
 
# Use your developer token and secret to instantiate access token object
access_token = OAuth::AccessToken.new(consumer, user_token, user_secret)
 


fields = ['first-name', 'last-name', 'headline', 'industry', 'num-connections', 'current-status', 'interests', 'skills'].join(',')

# Make a request for JSON data
json_txt = access_token.get("/v1/people/~:(#{fields})", 'x-li-format' => 'json').body
@profile = JSON.parse(json_txt)
else
end

 

  end
end
