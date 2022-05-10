class CreateFonos < ActiveRecord::Migration[7.0]
  def change
    create_table :fonos do |t|
      t.integer :numero
      t.integer :user_id

      t.timestamps
    end
  end
end
