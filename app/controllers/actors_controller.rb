class ActorsController < ApplicationController

	def index
		@actor = Actor.all
	end


	def new
		@actor = Actor.new
	end


	def create
		@actor = Actor.new(actor_params)
		if @actor.save
			redirect_to actors_path
		else
			render new_actor_path
		end
	end

	private 
		   # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date,:death_place)
    end
end















