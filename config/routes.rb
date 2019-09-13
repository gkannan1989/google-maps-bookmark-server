Rails.application.routes.draw do 
  get 'suggestion/index'
  get 'suggestion/create'
  get 'suggestion/update'
  get 'suggestion/destroy'
  # get 'bookmarks/index'
  # get 'bookmarks/create'
  # get 'bookmarks/update'
  # get 'bookmarks/destroy'
  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  scope '/api/search/' do
    resources :suggestion
  end

  scope '/api/v1' do
    resources :bookmarks
  end
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
