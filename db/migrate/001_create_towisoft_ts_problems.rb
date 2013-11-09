class CreateTowisoftTsProblems < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_problems do |t|
      t.string :description
    end
  end
end
