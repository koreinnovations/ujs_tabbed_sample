class CreateEntity2s < ActiveRecord::Migration
  def change
    create_table :entity2s do |t|
      t.string :field3
      t.string :field4
      t.string :field5

      t.timestamps
    end
  end
end
