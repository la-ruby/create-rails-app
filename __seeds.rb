User.create(email: 'admin@example.com', password: 'c5835df', password_confirmation: 'c5835df') unless User.find_by_email("admin@example.com")
