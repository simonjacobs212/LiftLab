class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.string :name
      t.integer :load
      t.integer :reps
      t.string :level
      t.integer :one_rep
      t.timestamps
    end
  end
end
