class AddLocationBoardRefToSchools < ActiveRecord::Migration[6.0]
  def change
    add_reference :schools, :location, foreign_key: true
    add_reference :schools, :board, foreign_key: true
  end
end
