class Answer < ActiveRecord::Base
  unloadable
  self.table_name = "towisoft_ts_answers"
  belongs_to :question
  belongs_to :cause
  
  def to_s
  	return "Answer:"+id.to_s+"->"+result.to_s
  end
end
