class PagesController < ApplicationController
  def home

  	@user = User.all

		require 'oauth'
		require 'json'
		require 'rest_client'
		 
		# Fill the keys and secrets you retrieved after registering your app
		api_key = ENV['LINKEDIN_API_KEY']
		api_secret = ENV['LINKEDIN_SECRET_KEY']


 

  end

  def profile
  	 @user = User.all
  end

end
