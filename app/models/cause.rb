class Cause < ActiveRecord::Base
  unloadable
  self.table_name = "towisoft_ts_causes"
  belongs_to :project, :dependent => :destroy
  has_many :answers, :dependent => :destroy
  has_many :questions, through: :answers
  has_and_belongs_to_many :problems, :join_table => "towisoft_ts_problem_cause"
end
