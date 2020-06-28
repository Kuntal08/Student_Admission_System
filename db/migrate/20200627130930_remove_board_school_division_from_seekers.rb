class RemoveBoardSchoolDivisionFromSeekers < ActiveRecord::Migration[6.0]
  def change
    remove_column :seekers, :board, :integer
    remove_column :seekers, :school, :integer
    remove_column :seekers, :division, :integer
  end
end
