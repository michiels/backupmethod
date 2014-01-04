Rails.application.routes.draw do

  resources :backups

  root to: redirect('/backups')

end
