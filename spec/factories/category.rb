# frozen_string_literal: true

FactoryBot.define do
  factory :category do |f|
    f.name { Faker::ProgrammingLanguage.name }
  end
end
