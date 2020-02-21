class SummaryInfo 
  attr_reader :author, :title
  def initialize(info)
    binding.pry
    @author = info[:docs].first[:author_name]
    @title = info[:docs].first[:title_suggest]
  end

  def get_book
    

  end
end
