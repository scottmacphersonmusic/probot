class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :job
      t.decimal :height
      t.decimal :weight
      t.string :color

      t.timestamps null: false
    end
  end
end
