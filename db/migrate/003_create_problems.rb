class CreateProblems < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_problems do |t|
      t.belongs_to :project
      t.string :description
    end
  end
end
