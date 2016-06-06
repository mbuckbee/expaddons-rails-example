class PagesController < ApplicationController

	before_action :load_apis

	def home
	
	end

	def fetch
		slug = params['slug']

		api_key = ENV["#{params['slug'].upcase}_API_KEY"]

		params[slug]['api_key'] = api_key

		ap ENV["#{params['slug'].upcase}_API_KEY"]

		redirect_to "https://#{slug}.expeditedaddons.com/?#{params[slug].to_query}"

	end

end