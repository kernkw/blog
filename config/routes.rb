Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  get 'posts/:id' => 'posts#show', :as => :post
  get 'posts/:id/edit' => 'posts#edit', :as => :edit_post
  patch 'posts/:id' => 'posts#update'
end
