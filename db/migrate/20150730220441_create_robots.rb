class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :job
      t.string :height
      t.string :weight
      t.string :color

      t.timestamps null: false
    end
  end
end
