class HotelsController < ApplicationController

	def index
		@hotel = Hotel.all
	end

	def new
		if user_signed_in?
			@hotel = Hotel.new
		else
			redirect_to new_user_session_path
		end
	end

	def create
		@hotel = Hotel.new(params[:hotel])
		@hotel.address = Address.new(params[:address])
		if @hotel.save
			flash[:success] = "The hotel has successfully added"
		  redirect_to @hotel
		else
			render 'new'
		end
	end

	def show
		@hotel = Hotel.where(id: params[:id]).first
	end

end
