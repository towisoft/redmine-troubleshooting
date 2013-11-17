Redmine::Plugin.register :troubleshooting do
  name 'Troubleshooting plugin'
  author 'Fiddis & Tono'
  description 'This is a plugin for Redmine to allow for simple troubleshooting functionality'
  version '0.0.1'
  url 'https://github.com/towisoft/redmine-troubleshooting'
  author_url 'https://github.com/towisoft/redmine-troubleshooting'

  project_module :troubleshooting do
    permission :troubleshooting_view, {
    	:troubleshooting => :index, 
    	:problems => [:index]
    }
    permission :troubleshooting_manage, :troubleshooting => :manage
  end
  
  menu :project_menu, :troubleshooting, { :controller => 'troubleshooting', :action => 'index' }, :caption => 'Troubleshooting', :after => :wiki, :param => :project_id
end
