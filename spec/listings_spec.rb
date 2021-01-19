require 'listing.rb'

describe Listing do
    describe 'testing interaction database' do
      it '.get_listings'  do
        connection = PG.connect(dbname: 'MakersBnB')
        listing = Listing.get_listings
        
       expect(listing).to include{name:"The Turtle Suite", description: "the dreamiest beachfront view", price: 250}
      end
    end
  end
    



