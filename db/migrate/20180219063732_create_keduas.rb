class CreateKeduas < ActiveRecord::Migration[5.1]
  def change
    create_table :keduas do |t|
      t.string :nama
      t.text :alamat
      t.integer :no_hp

      t.timestamps
    end
  end
end
