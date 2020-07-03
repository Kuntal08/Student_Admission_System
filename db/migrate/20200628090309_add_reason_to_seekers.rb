class AddReasonToSeekers < ActiveRecord::Migration[6.0]
  def change
    add_column :seekers, :reason, :text
  end
end
