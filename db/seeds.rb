# frozen_string_literal: true

user = User.new(email: 'login@mail.com', password: '123456', password_confirmation: '123456')
user.save!
user = User.last
5.times do
  FactoryBot.create(:article, user: user)
end
