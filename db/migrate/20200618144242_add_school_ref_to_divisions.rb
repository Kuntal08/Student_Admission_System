class AddSchoolRefToDivisions < ActiveRecord::Migration[6.0]
  def change
    add_reference :divisions, :school, foreign_key: true
  end
end
