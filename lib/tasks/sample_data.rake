namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                         email: "admin@admin.org",
                         password: "123456",
                         password_confirmation: "123456",
                         admin: true)
  end
end