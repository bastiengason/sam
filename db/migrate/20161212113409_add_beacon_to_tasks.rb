class AddBeaconToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :beacon, :string
  end
end
