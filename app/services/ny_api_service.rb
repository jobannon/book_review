class NyApiService

  def initialize(title)
    @title = title 
  end

  def get_by_title
    str_builder = "?title=" + @title
    get_json(str_builder)
  end
   
  private

  def conn
    Faraday.new("https://api.nytimes.com/svc/books/v3/reviews.json") do |f|
      f.params["api-key"] = "UpEzPl6O6B6eaXArAmACeClBRrvO2MCn"
    end
    # ?title=Normal People&api-key=UpEzPl6O6B6eaXArAmACeClBRrvO2MCn
  end

  def get_json(uri)
    response = conn.get(uri) 
    JSON.parse(response.body, symbolize_names: true)
  end
end

