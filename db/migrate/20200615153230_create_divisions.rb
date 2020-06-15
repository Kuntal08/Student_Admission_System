class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :division
      t.string :stage
      t.text :description

      t.timestamps
    end
  end
end
