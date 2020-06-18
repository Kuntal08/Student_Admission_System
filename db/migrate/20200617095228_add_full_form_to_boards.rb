class AddFullFormToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :full_form, :string
  end
end
