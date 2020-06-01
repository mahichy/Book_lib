class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def index
		@user = User.order(:last_name).page(params[:page])
	end
	
end