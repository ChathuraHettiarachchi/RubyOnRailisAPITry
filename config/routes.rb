Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'admin/dashboard#index'

  namespace 'api' do
    namespace 'v1' do
      post 'article/new', to: 'articles#create', defaults: {:format => 'json'}
      get 'article/list', to: 'articles#index', defaults: {:format => 'json'}
      get 'article/:id/details', to: 'articles#show', defaults: {:format => 'json'}
    end
  end

end
