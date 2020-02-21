class BookApiService 

  def initialize(title)
    @title = title 
  end

  def get_by_title
    str_builder = "?title=" + @title
    get_json(str_builder)
  end
  
  private

  def conn
    Faraday.new("https://openlibrary.org/search.json") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def get_json(uri)
    response = conn.get(uri) 
    JSON.parse(response.body, symbolize_names: true)
  end
end
