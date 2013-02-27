Rails.application.routes.draw do

  mount DiscourseUserDirectory::Engine => "/discourse_user_directory"
end
