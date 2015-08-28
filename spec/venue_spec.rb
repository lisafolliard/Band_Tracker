require('spec_helper')

describe(Venue) do
  it('validates the presence of a location') do
    venue = Venue.create({:location => ""})
    expect(venue.save()).to(eq(false))
  end



end
