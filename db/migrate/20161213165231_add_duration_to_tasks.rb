class AddDurationToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :duration, :integer
  end
end
