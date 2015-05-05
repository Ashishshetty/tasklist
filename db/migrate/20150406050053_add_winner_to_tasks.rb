class AddWinnerToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :specific_task, :string
  end
end
