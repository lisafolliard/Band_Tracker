require('spec_helper')

describe(Band) do
  describe('#venues') do
    it('determines which venues belong to which bands') do
      new_venue = Venue.create({:location => 'Red Rocks'})
      new_venue2 = Venue.create({:location => 'Concert Hall'})
      new_venue3 = Venue.create({:location => 'Smith Auditorium'})
      new_band = Band.create({:name => "Rockers"})
      new_band.venues.push(new_venue)
      new_band.venues.push(new_venue2)
      expect(new_band.venues()).to(eq([new_venue, new_venue2]))
    end
  end

    it("validates the presence of a name") do
      band = Band.create({:name => ""})
      expect(band.save()).to(eq(false))
    end


end
