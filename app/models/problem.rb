class Problem < ActiveRecord::Base
  unloadable
  self.table_name = "towisoft_ts_problems"
  belongs_to :project, :dependent => :destroy
  has_and_belongs_to_many :causes, :join_table => "towisoft_ts_problem_cause"
  end
