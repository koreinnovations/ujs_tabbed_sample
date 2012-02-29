class CreateEntity3s < ActiveRecord::Migration
  def change
    create_table :entity3s do |t|
      t.string :field5
      t.string :field6
      t.string :field7

      t.timestamps
    end
  end
end
