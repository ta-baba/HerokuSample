Rails.application.routes.draw do
  get   'members/index'
  get   'members/disp/:id', to:'members#disp'
  get   'members/new'
  post  'members/create'
  get   'members/:id/edit', to:'members#edit'
  patch 'members/:id/update', to:'members#update'
  delete	'members/destroy/:id', to:'members#destroy'
  
  get   'humen/disp'
  get   'humen/new'
  post  'humen/create'
  get   'hey/top'
  get   'hey/botom'
  
  resources :blogs
  #root 'blogs#index'
  root 'hey#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
