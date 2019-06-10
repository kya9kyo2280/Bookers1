class BooksController < ApplicationController
  def new
  	  @book = Book.new
  end

   def create

   	book = Book.new(post_params)

   	book.save

   	redirect_to '/top'
   end

   def index
     @books = Book.all
   end

   def show
    @post = Book.find(params[:id])
   end

 private

   def post_params
   	   params.require(:book).permit(:title, :body)
   end

end
