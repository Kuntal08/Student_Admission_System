class AddBoardRefSchoolRefDivisionRefToSeekers < ActiveRecord::Migration[6.0]
  def change
    add_reference :seekers, :board, foreign_key: true
    add_reference :seekers, :school, foreign_key: true
    add_reference :seekers, :division, foreign_key: true
  end
end
