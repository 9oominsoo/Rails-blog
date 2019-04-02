Rails.application.routes.draw do


  get 'searches/result'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controller: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}
  root 'home#index'
  get 'home/index', to: 'home#index'

  get 'pages/about'

  get 'pages/blog'

  get 'pages/contact'

  get 'pages/services'

  get 'pages/work'

  get 'pages/work-grid'

  get 'pages/work-grid-without-text'

  get 'posts/boardhome'

  get 'posts/list'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/my'

  get 'posts/add_like'

  get 'searches/search_home'

  resources :posts do
    member do
      get :add_like
      get :delete_like
      get :make_comment
      get :update_comment
    end
  end

end
