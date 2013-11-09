class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_questions do |t|
      t.belongs_to :project
      t.string :description
      t.integer :complexity
    end
  end
end
