class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.date :dob
      t.string :address
      t.string :qualification
      t.string :board
      t.string :state
      t.string :pic
      t.integer :coff
      t.string :clg
      t.string :dept
      t.integer :cno
      t.string :mail

      t.timestamps null: false
    end
  end
end
