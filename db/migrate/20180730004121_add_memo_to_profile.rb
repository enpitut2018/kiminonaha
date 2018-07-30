class AddMemoToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :memo, :string
  end
end
