class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string   :description, null: false, limit: 50
      t.integer  :compweeter_id
      t.boolean  :completed, default: false

      t.timestamps null: false
    end
  end
end
