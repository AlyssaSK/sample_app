namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    admin = User.create!(name: 'Admin',
                         email: 'admin@admin.org',
                         password: '123456',
                         password_confirmation: '123456',
                         admin: true)
    users = User.all
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end