class SummaryInfo 
  attr_reader :summarys_array
  def initialize(info)
    #not ideal to put here
    @summarys_array = info[:results].reduce(Array.new) do |acc, book|
      acc  << book[:summary]
      acc << book[:publication_dt]
      acc
    end
  end

  def summarys_array_count
    @summarys_array.count - 2 # not ideal
  end

end
