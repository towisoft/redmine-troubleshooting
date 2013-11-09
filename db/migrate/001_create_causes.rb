class CreateCauses < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_causes do |t|
      t.belongs_to :project
      t.string :description
      t.integer :weight
    end
  end
end
