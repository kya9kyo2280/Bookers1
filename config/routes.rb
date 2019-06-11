Rails.application.routes.draw do
  get 'home/index'
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'top' => 'root#top'

  post'books' => 'books#create'

  get'books' => 'books#index'

  get'books/:id' => 'books#show', as: 'post'

  get'books/:id/edit' => 'books#edit', as: 'edit_book'

  patch 'books/:id' => 'books#update', as: 'update_book'

  delete'book/:id' => 'books#destroy', as: 'destroy_book'

  root to: 'home#index'

end

