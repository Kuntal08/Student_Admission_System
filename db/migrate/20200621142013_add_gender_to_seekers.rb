class AddGenderToSeekers < ActiveRecord::Migration[6.0]
  def change
    add_column :seekers, :gender, :string
  end
end
