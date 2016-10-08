Rails.application.routes.draw do
  # resources :choose_electrical_subjects
  namespace :users do
    resources :sessions, :students_biographies, :choose_electrical_subjects
    get "login" => 'sessions#new', :as => "login"
    get "logout" => 'sessions#destroy', :as => "logout"
  end
  namespace :admin do
    resources :users, :sessions, :buku_induks, :lectures, :functional_structurals, :students_biographies, :civil_subjects, :electrical_subjects, :studiyears, :classrooms, :classtimes, :electricalschedulesubjects, :civilschedulesubjects, :semesters, :class_times
      #  sessions
       get "login" => 'sessions#new', :as => "login"
       get "logout" => 'sessions#destroy', :as => "logout"

      #  calon_mahasiswa
       get 'calon_mahasiswa_index' => 'registrations#index', :as => "calon_mahasiswa_index"
       get 'calon_mahasiswa_index/new' => 'registrations#new', :as => "new_calon_mahasiswa"
       get 'calon_mahasiswa/:nama/edit' => 'registrations#edit', :as => "edit_calon_mahasiswa"
       get 'calon_mahasiswa/:nama' => 'registrations#show', :as => "calon_mahasiswa"
       delete 'calon_mahasiswa/:nama' => 'registrations#destroy', :as => "delete_calon_mahasiswa"
       get 'calon_mahasiswa/:nama' => 'registrations#download_pdf', :as => "calon_mahasiswa_download_pdf"

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

       #electricalshcedulesubject
       get 'download_sk_mengajar' => 'electricalschedulesubjects#download_pdf', :as => "download_sk_mengajar"

       #  surat masuk
      #  get 'calon_mahasiswa_index' => 'registrations#index', :as => "calon_mahasiswa_index"
      #  get 'calon_mahasiswa_index/new' => 'registrations#new', :as => "new_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama/edit' => 'registrations#edit', :as => "edit_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama' => 'registrations#show', :as => "calon_mahasiswa"
      #  delete 'calon_mahasiswa/:nama' => 'registrations#destroy', :as => "delete_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama' => 'registrations#download_pdf', :as => "calon_mahasiswa_download_pdf"

       #  surat keluar
      #  get 'calon_mahasiswa_index' => 'registrations#index', :as => "calon_mahasiswa_index"
      #  get 'calon_mahasiswa_index/new' => 'registrations#new', :as => "new_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama/edit' => 'registrations#edit', :as => "edit_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama' => 'registrations#show', :as => "calon_mahasiswa"
      #  delete 'calon_mahasiswa/:nama' => 'registrations#destroy', :as => "delete_calon_mahasiswa"
      #  get 'calon_mahasiswa/:nama' => 'registrations#download_pdf', :as => "calon_mahasiswa_download_pdf"

    resources :registrations do
       collection do
         get 'ok' => 'registrations#ok_mahasiswa', :as => "ok_mahasiswa"
       end
    end


  end

  resources :incoming_mails, :outcoming_mails, :students_biographies, :buku_induks, :functional_structurals, :lectures, :registrations, :electrical_subjects, :civil_subjects, :studiyears, :classrooms, :classtimes, :electricalschedulesubjects, :civilschedulesubjects, :semesters, :class_times
  #registrations
  get 'calon_mahasiswa_index' => 'registrations#index', :as => "calon_mahasiswa_index"
  get 'calon_mahasiswa_index/new' => 'registrations#new', :as => "new_calon_mahasiswa"
  get 'calon_mahasiswa/:id/edit' => 'registrations#edit', :as => "edit_calon_mahasiswa"
  get 'calon_mahasiswa/:id' => 'registrations#show', :as => "calon_mahasiswa"
  delete 'calon_mahasiswa/:id' => 'registrations#destroy', :as => "delete_calon_mahasiswa"
  get 'calon_mahasiswa/:nama' => 'registrations#download_pdf', :as => "calon_mahasiswa_download_pdf"

  #lectures
  get 'dosen' => 'lectures#index', :as => "dosen"

  #surat masuk
  get 'surat_masuk_index' => 'incoming_mails#index', :as => "surat_masuk_index"

  #kurikulum Teknik Elektro
  resources :electrical_subjects do
    # collection do
    #   get  'download' => 'electrical_subjects#download', as: :download
    # end
  end
  #beranda
  root 'pages#index'
  get 'aturan_kuliah' => 'pages#aturan_kuliah', :as => 'aturan_kuliah'


  # users
  # resources :users do
  #   resources :choose_electrical_subjects
  # end

end
