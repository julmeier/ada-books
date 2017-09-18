class BooksController < ApplicationController

  BOOKS = [{id: 1, title: "Object Oriented Design in Ruby", author: "Sandy Metz"},
    {id: 2, title: "Harry Potter and the Goblet of Fire", author: "JK Rowling"},
    {id: 3, title: "The Girl with the Dragon Tatoo", author: "Stieg Larsson"}]

  def index
    @books  = BOOKS
  end

  def show
    id = params[:id].to_i
    @book = nil
    BOOKS.each do |book|
      if book[:id] == id
        @book = book
      end
    end
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
