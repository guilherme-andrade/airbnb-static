require 'json'
require 'open-uri'

class FlatsController < ApplicationController
	URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

	before_action :set_flats

	def index; end

	def show
		@flat = @flats.find { |flat| flat['id'] === params['id'].to_i }
	end

	def set_flats
		@flats = JSON.parse(URI.open(URL).read)
	end
end
