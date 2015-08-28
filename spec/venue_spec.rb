require('spec_helper')

describe(Venue) do
  it('validates the presence of a location') do
    venue = Venue.create({:location => ""})
    expect(venue.save()).to(eq(false))
  end

  it('capitalizes the first letter of a venue location') do
    venue = Venue.create({:location => 'green theatre'})
    expect(venue.location()).to(eq('Green theatre'))
  end
end
