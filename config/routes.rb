Rails.application.routes.draw do

  resources :backups do
    member do
      get :fetch
    end
  end

  root to: redirect('/backups')

end
