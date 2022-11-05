class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
   
  def create
    @book = Book.new(book_params)
    @book.save
    @books = Book.all
  end

  def show
    @book =Book.find(params[:id])
    #@user= User.find_by(id: @book.user_id) 
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to @book
      else
        render :edit, status: :unprocessable_entity
      end
  end



  def destroy
    @book= Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "book was successfully destroyed." }
      format.json { head :no_content }
    end

  end
  private
  def set_book
    @book = Book.find(params[:id])
  end
  def book_params
    params.require(:book).permit(:id,:name,:author,:gen,:price)
  end
end
