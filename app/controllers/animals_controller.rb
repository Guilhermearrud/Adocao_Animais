class AnimalsController < ApplicationController
	before_filter :authenticate_user!
	def index
		@animals=current_user.animals
	end

	def new 
		@animal=Animal.new
	end

	def create
		@animal=Animal.new(animal_params)
		@animal.user=current_user
		@animal.save
		redirect_to animals_path
	end

	def edit
	end

	def update
		@animal=Animal.find(params[:id])
		@animal.update_attributes(animal_params)
		@animal.save
	end

	def destroy
	end

	def search
		@users=User.all
		@raca=Animal.pluck(:raca)
	end

	def find
		@animals = Animal.where(search_params)
	end

	private

  def search_params
    params.
      permit(:tipo, :user, :adopted, :raca).
      delete_if {|key, value| value.blank? }
  end

	def animal_params 
		params.require(:animal).permit(:tipo,:raca,:obs,:info, :avatar, :avatar_cache, :video)
	end
end

