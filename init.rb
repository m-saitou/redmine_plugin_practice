Redmine::Plugin.register :redmine_plugin_practice do
  name 'Redmine Plugin Practice plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  project_module :practice do
    permission :view_events, :events => [:index, :show]
    permission :manage_events, :events => [:new, :edit, :create, :update, :destroy],
               :require => :member
  end
  
  menu :project_menu, :practice, { :controller => 'events', :action => 'index'}, :param => :project_id
end
