class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string   :project_name ,null: false
      t.string   :task_name,null: true
      t.boolean  :specific_task,
    end
  end
end
