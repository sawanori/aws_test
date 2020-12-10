Rails.application.routes.draw do
  resources :my_files
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'my_files#index'
  get 'my_files/downloadpdf/download' => 'my_files#downloadpdf'
end
