class CreateVenues < ActiveRecord::Migration
  def change
    create_table(:venues) do |t|
      t.column(:location, :string)

      t.timestamps()
    end
  end
end
