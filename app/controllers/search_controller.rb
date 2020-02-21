class SearchController < ApplicationController
  def index
    render locals: {
      book: BooksFacade.new(params[:title]).get_book_details
    }
  end
end
