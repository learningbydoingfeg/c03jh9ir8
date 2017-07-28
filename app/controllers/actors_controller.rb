class ActorsController < ApplicationController

	def index
		@actor = Actor.all
	end


	def new
		@actor = Actor.new
	end

end
