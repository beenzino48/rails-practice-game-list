Rails.application.routes.draw do
  # nesting the bookmarks in the lists and choosing what methods are needed
  resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  # accessing the destroy method for the bookmarks and movies because they will both be needed to be deleted
  # resources :bookmarks, only: :destroy
  # resources :movies, only: :destroy
end
