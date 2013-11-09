class Question < ActiveRecord::Base
  unloadable
  self.table_name = "towisoft_ts_questions"
  belongs_to :project, :dependent => :destroy
  has_many :answers, :dependent => :destroy
  has_many :causes, through: :answers
end
