class BaseData < ActiveRecord::Migration
  def up
	Problem.create(:project_id => 1, :description => "Printer does not work")
	Problem.create(:project_id => 1, :description => "Printer does not print in color")
	Cause.create(:project_id => 1, :description => "Printer is not plugged-in")
	Cause.create(:project_id => 1, :description => "Printer is not turned on")
	Cause.create(:project_id => 1, :description => "Printer is not connected to the PC")
	Cause.create(:project_id => 1, :description => "Cartridges are empty")
	Question.create(:project_id => 1, :complexity => 1, :description => "Is printer plugged in?")
	Question.create(:project_id => 1, :complexity => 1, :description => "Is printer turned on?")
	Question.create(:project_id => 1, :complexity => 2, :description => "Is printer connected to the computer?")
	Question.create(:project_id => 1, :complexity => 1, :description => "Does cartridge indicator show problem?")

	Problem.find(1).causes<<(Cause.find(1))
	Problem.find(1).causes<<(Cause.find(2))
	Problem.find(1).causes<<(Cause.find(3))
	Problem.find(2).causes<<(Cause.find(4))
	
	Answer.create(:question_id=>1, :cause_id=>1, :result => 0)
	Answer.create(:question_id=>2, :cause_id=>2, :result => 0)
	Answer.create(:question_id=>3, :cause_id=>3, :result => 0)
	Answer.create(:question_id=>4, :cause_id=>4, :result => 0)
	
  end
  
  def down

  end
end
