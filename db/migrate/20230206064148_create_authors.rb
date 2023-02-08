class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :author
      t.string :email
      t.string :age
      t.string :phone
      t.timestamps
    end
  end
end
