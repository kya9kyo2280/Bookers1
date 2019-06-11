class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
    flash[:notice] = "Book was successfully created"
    redirect_to "/books/#{book.id}"
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    flash[:notice] = "Book was successfully updated"
    end
    redirect_to "/books/#{book.id}"
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
    flash[:notice] = "Book was successfully destroyed"
    redirect_to books_path
    end
  end

  private

  def book_params
   params.require(:book).permit(:title, :body)
  end
end
