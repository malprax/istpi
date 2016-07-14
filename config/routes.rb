Rails.application.routes.draw do
  namespace :admin do
   resources :registrations, :users, :sessions, :buku_induks, :lectures
   get "login" => 'sessions#new', :as => "login"
   get "logout" => 'sessions#destroy', :as => "logout"
   get 'calon_mahasiswa' => 'registrations#index', :as => "calon_mahasiswa"
   get 'dosen' => 'lectures#index', :as => "dosen"
   get 'dosen/:id/edit' => 'lectures#edit', :as => "edit_dosen"
   get 'dosen/new' => 'lectures#new', :as => "new_dosen"
  end

  resources :incoming_mails, :outcoming_mails, :students_biographies, :buku_induks, :functional_structurals, :lectures, :registrations
  get "calon_mahasiswa" => 'registrations#index', :as => "calon_mahasiswa"
  get "daftar_calon_mahasiswa" => 'registrations#new', :as => "daftar_calon_mahasiswa"
  get 'dosen' => 'lectures#index', :as => "dosen"
  #beranda
  root 'pages#index'

end
