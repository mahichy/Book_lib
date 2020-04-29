class BooksController < ApplicationController

  before_action :set_book, except: [:index, :new, :create] 
  before_action :authenticate_user!, except: [:show]


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

  private

  def set_book
     @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:subject, :book_type, :author_name, :pages, :listing_name, :summery, :address, :borrow, :is_paper_back, :is_pdf, :price, :active)
  end

end
