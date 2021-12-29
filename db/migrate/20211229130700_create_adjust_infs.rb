class CreateAdjustInfs < ActiveRecord::Migration[6.1]
  def change
    create_table :adjust_infs do |t|
      t.date :day
      t.float :price

      t.timestamps
    end
  end
end
