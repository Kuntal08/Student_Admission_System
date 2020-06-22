class CreateSeekers < ActiveRecord::Migration[6.0]
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :home_address
      t.string :email
      t.integer :phone
      t.date :birth_date
      t.string :father_name
      t.string :mother_name
      t.string :mother_employment
      t.string :father_employment
      t.integer :board
      t.integer :school
      t.integer :division
      t.boolean :approve, default:false
      t.boolean :reject, default:false

      t.timestamps
    end
  end
end
