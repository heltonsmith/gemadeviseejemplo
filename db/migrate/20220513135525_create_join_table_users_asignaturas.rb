class CreateJoinTableUsersAsignaturas < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :asignaturas, column_options: { null: false, foreign_key: true } do |t|
      t.index [:user_id, :asignatura_id]
      t.index [:asignatura_id, :user_id]
    end
  end
end
