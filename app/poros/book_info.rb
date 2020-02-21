class BookInfo
  attr_reader :author, :title, :genres
  def initialize(info)
    @author = info[:docs].first[:author_name]
    @title = info[:docs].first[:title_suggest]
    @genres = info[:docs].map[:subjects] do |subject|
      subject
    end
    binding.pry 
  end

  def get_book
    

  end
end
