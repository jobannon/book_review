class SearchController < ApplicationController
  def index
    render locals: {
      book: BooksFacade.new(params[:title]).get_book_details,
      summary: BooksFacade.new(params[:title]).get_summary_details
    }
  end
end
