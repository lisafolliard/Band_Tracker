require('spec_helper')

describe(Venue) do
  it('validates the presence of a location') do
    venue = Venue.create({:location => ""})
    expect(venue.save()).to(eq(false))
  end

  it('capitalizes all letters of a venue location') do
    venue = Venue.create({:location => 'green theatre'})
    expect(venue.location()).to(eq('Green Theatre'))
  end
end
