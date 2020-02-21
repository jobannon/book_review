require 'rails_helper'

RSpec.describe('User can search for a book') do
  it('retuns the book summary and review as well as 
     - Title
     - Author
     - Genres
     -it should show review number one and review two') do
    visit root_path

    fill_in :title, with: "normal people"

    click_on "Find Book"


    expect(current_path).to eq("/search")

     
    expect(page).to have_content("Normal People")
    expect(page).to have_content("Sally Rooney")

    expect(page).to have_content("Rooney’s second novel tracks two gifted but troubled teenagers across four years of friendship and occasional romance.")
    expect(page).to have_content("Like “Conversations With Friends,” “Normal People” also traces a young romance in Ireland.")
  end

end

# as a user
# When I visit "/"
# And I input "the man who saw everything" into the form
# (Note: Use the existing search form)
# And I click "Find Book"
# Then I should be on page "/search"
# Then I should see the book's info
# For that book I should see
# - Title
# - Author
# - Genres
# (Note: genres is referred to as "subjects" in the book search response)
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: ""The Man Who Saw Everything,"" which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at "authoritarian old men.""
# Review Publication Date: 2019-10-09
# - Review 2: "Deborah Levy's latest novel, "The Man Who Saw Everything," experiments with time travel, history and the endless complications of love."
# Review Publication Date: 2019-10-15
