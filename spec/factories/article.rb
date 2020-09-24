# frozen_string_literal: true

FactoryBot.define do
  factory :article do |f|
    f.title { Faker::Movies::StarWars.droid }
    f.body { Faker::Movies::StarWars.quote }
    f.category { create(:category) }
  end
end
