class BooksFacade
  
  def initialize(title)
    @title = title
  end

  def get_book_details
    book_json = BookApiService.new(@title).get_by_title
    BookInfo.new(book_json)

    summary_json = NyApiService.new(@title).get_by_title
    SummaryInfo.new(summary_json)
  end
end 

# class CustomerSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :id, :first_name, :last_name 
# end
