class HomeController < ApplicationController
	def index 
		@notAdopteds = Animal.where(adopted: true).order("created_at DESC")[0..2]
		@adopteds = Animal.where(adopted: false).order("created_at DESC")[0..2]
	end
end