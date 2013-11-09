class CreateTowisoftTsConditions < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_conditions do |t|
      t.string :condition
      t.integer :complexity
    end
  end
end
