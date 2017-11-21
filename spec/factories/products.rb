# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price_in_cents { (Faker::Commerce.price.to_f * 100).to_i }
    description { Faker::Hipster.paragraph }
  end
end
