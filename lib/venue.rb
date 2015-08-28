class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:location, :presence => true)
  before_save(:capitalize_location)

private

  define_method(:capitalize_location) do
    self.location=location().capitalize()
  end
end
