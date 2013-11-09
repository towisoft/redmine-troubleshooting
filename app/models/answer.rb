class Answer < ActiveRecord::Base
  unloadable
  self.table_name = "towisoft_ts_answers"
  belongs_to :question
  belongs_to :cause
end
