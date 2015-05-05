class UpdateColumns < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.change :specific_task, :boolean
    end
  end
  end