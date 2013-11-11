# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'projects/:project_id/troubleshooting', :to => 'troubleshooting#index'
get 'respond', :to => 'troubleshooting#respond'