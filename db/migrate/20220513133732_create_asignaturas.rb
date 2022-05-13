class CreateAsignaturas < ActiveRecord::Migration[7.0]
  def change
    create_table :asignaturas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
