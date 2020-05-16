class BooksController < ApplicationController

  before_action :set_book, except: [:index, :new, :create,:destroy] 
  before_action :authenticate_user!, except: [:show ]
  before_action :is_admin, only: [:listing, :pricing, :description, :photo_upload, :amenities, :location, :update]


  def index
    @books = current_user.books
  end

  def new
    @book = current_user.books.build
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to listing_book_path(@book), notice: "Saved.....!"
    else
      flash[:alert] = "Something Went Wrong...." 
      render :new
    end
  end

  def show
    
  end

  def listing
    
  end

  def pricing
    
  end

  def description
   
  end

  def photo_upload
    @photos = @book.photos

  end

  def amenities
  end

  def location
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Saved...."
    else
        flash[:alert] = "Something went wrong....."
      end

      redirect_back(fallback_location: request.referer)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.photos.delete_all

    if @book.destroy
        redirect_to books_path, notice: "Book Was successfully destroyed."
      else
        redirect_to books_path, error: "Something went wrong......"
      end
  end





  # def destroy
  #   @test.destroy
  #   respond_to do |format|
  #     format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

 

  private

  def set_book
     @book = Book.find(params[:id])
  end

  def is_admin
    redirect_to root_path, alert: "Yon don't have permission...." unless current_user.id == @book.user_id
  end

 

  def book_params
    params.require(:book).permit(:subject, :book_type, :author_name, :pages, :listing_name, :summary, :address, :borrow, :is_paper_back, :is_pdf, :price, :active)
  end

end
