Rails.application.routes.draw do
  root 'issues#index'
  post 'search_issues', to: 'issues#search'
  get 'favorites', to: 'issues#favorites'
  post 'save_favorite', to: 'issues#save_favorite'
end
