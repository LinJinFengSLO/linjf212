class CreateTask1s < ActiveRecord::Migration
  def change
    create_table :task1s do |t|
      t.text :name

      t.timestamps
    end
  end
end
