class AddPlaceAndEventToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :Place, :string
    add_column :profiles, :Event, :string
  end
end
