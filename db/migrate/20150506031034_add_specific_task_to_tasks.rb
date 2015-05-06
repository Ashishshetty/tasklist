class AddSpecificTaskToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :specific_task, :boolean
  end
end
