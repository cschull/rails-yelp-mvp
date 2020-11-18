Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[':index' ':new' ':create']
  end

  resources :comments, only: %i[':show' ':edit' ':update' ':destroy']
end
