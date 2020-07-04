class RemoveSchoolForeignKeyFromDivisions < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :divisions, :schools
  end
end
