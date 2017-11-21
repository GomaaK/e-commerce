# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :price_in_cents, presence: true, numericality: { less_than: 200_000_000 }
  validates :description, presence: true, length: { minimum: 100 }
end
