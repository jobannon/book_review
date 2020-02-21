class SummaryInfo 
  attr_reader :summarys_array
  def initialize(info)
    @summarys_array = info[:results].map do |book|
      book[:summary]
    end
  end

  def get_book
    

  end
end
