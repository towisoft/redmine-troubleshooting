class CreateProblemCauseJoin < ActiveRecord::Migration
  def change
    create_table :towisoft_ts_problem_cause, id: false do |t|
      t.integer :problem_id
      t.integer :cause_id
    end
    add_index :towisoft_ts_problem_cause, [:problem_id, :cause_id], :unique => true, :name => "idx_problem_cause"
  end
end
