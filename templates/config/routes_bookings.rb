
  root to: redirect('/bookings')
  resources :bookings, only: [:index, :update, :create]
