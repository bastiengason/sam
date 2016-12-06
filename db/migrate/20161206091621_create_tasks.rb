class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :distance
      t.string :frequency
      t.string :time_slot
      t.string :status
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
