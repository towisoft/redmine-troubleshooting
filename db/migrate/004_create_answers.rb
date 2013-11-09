class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_answers do |t|
      t.boolean :result
      t.integer :question_id, :null=>false, :references => [:towisoft_ts_questions, :id]
      t.integer :cause_id, :null=>false, :references => [:towisoft_ts_causes, :id]
    end
  end
end
