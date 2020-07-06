class AddUserIdToSeekers < ActiveRecord::Migration[6.0]
  def change
    add_column :seekers, :user_id, :integer

  end
end
