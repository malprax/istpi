Rails.application.routes.draw do
  namespace :admin do
   resources :registrations, :users, :sessions, :buku_induks
  end

  namespace :admin do
    get "login" => 'sessions#new', :as => "login"
    get "logout" => 'sessions#destroy', :as => "logout"
  end

  namespace :admin do
   resources :registrations do
     get "cetak"
   end
   get 'calon_mahasiswa' => 'registrations#index', :as => "calon_mahasiswa"
  end

  resources :incoming_mails, :outcoming_mails, :students_biographies, :buku_induks, :functional_structurals, :lectures
  resources :registrations
  get "calon_mahasiswa" => 'registrations#index', :as => "calon_mahasiswa"
  get "daftar_calon_mahasiswa" => 'registrations#new', :as => "daftar_calon_mahasiswa"
  root 'pages#index'

end
