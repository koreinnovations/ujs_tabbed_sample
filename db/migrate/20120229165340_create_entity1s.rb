class CreateEntity1s < ActiveRecord::Migration
  def change
    create_table :entity1s do |t|
      t.string :field1
      t.string :field2
      t.string :field3

      t.timestamps
    end
  end
end
