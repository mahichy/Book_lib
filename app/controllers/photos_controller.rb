class PhotosController < ApplicationController

	def create
		@book = Book.find(params[:book_id])

		if params[:images]
			params[:images].each do |img|
				@book.photos.create(image: img)
			end

			@photos = @book.photos
			redirect_back(fallback_location: request.referer, notice: "Saved....")
		end 
	end
	
end