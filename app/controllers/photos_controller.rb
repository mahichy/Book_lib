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

	def destroy
    @photo = Photo.find(params[:id])
    book_id = params[:book_id]

    if @photo.destroy
      redirect_to photo_upload_book_path(book_id), notice: "Photo successfully destroyed."
    else
      redirect_to photo_upload_book_path(book_id), error: "Something went wrong......"
    end
  end
	
end