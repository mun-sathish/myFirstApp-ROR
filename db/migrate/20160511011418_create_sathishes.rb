class CreateSathishes < ActiveRecord::Migration
  def change
    create_table :sathishes do |t|
      t.text :name
      t.integer :semester
      t.integer :marks
      t.text :address

      t.timestamps
    end
  end
end
