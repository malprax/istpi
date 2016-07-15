Rails.application.routes.draw do
  namespace :admin do
   resources :registrations, :users, :sessions, :buku_induks, :lectures, :functional_structurals
  #  sessions
   get "login" => 'sessions#new', :as => "login"
   get "logout" => 'sessions#destroy', :as => "logout"

  #  calon_mahasiswa
   get 'calon_mahasiswa_index' => 'registrations#index', :as => "calon_mahasiswa_index"
   get 'calon_mahasiswa_index/new' => 'registrations#new', :as => "new_calon_mahasiswa"
   get 'calon_mahasiswa/:id/edit' => 'registrations#edit', :as => "edit_calon_mahasiswa"
   get 'calon_mahasiswa/:id' => 'registrations#show', :as => "calon_mahasiswa"
   delete 'calon_mahasiswa/:id' => 'registrations#destroy', :as => "delete_calon_mahasiswa"
   
  #  dosen
   get 'dosen_index' => 'lectures#index', :as => "dosen_index"
   get 'dosen_index/new' => 'lectures#new', :as => "new_dosen"
   get 'dosen/:id/edit' => 'lectures#edit', :as => "edit_dosen"
   get 'dosen/:id' => 'lectures#show', :as => "dosen"
   delete 'dosen/:id' => 'lectures#destroy', :as => "delete_dosen"

   # struktural
   get 'struktural_index' => 'functional_structurals#index', :as => "struktural_index"
   get 'struktural_index/new' => 'functional_structurals#new', :as => "new_struktural"
   get 'struktural/:id/edit' => 'functional_structurals#edit', :as => "edit_struktural"
   get 'struktural/:id' => 'functional_structurals#show', :as => "struktural"
   delete 'struktural/:id' => 'functional_structurals#destroy', :as => "delete_struktural"

  end

  resources :incoming_mails, :outcoming_mails, :students_biographies, :buku_induks, :functional_structurals, :lectures, :registrations
  get "calon_mahasiswa" => 'registrations#index', :as => "calon_mahasiswa"
  get "daftar_calon_mahasiswa" => 'registrations#new', :as => "daftar_calon_mahasiswa"
  get 'dosen' => 'lectures#index', :as => "dosen"
  #beranda
  root 'pages#index'

end
