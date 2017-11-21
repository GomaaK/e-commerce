# frozen_string_literal: true

require 'database_cleaner'
require 'rake'

ECommerce::Application.load_tasks

RSpec.configure do |config|
  cleaners = [
    DatabaseCleaner
    # DatabaseCleaner[:active_record, { model: DatabaseModel }]
  ]

  cleaners.each do |cleaner|
    config.before :suite do
      cleaner.clean_with(:truncation)
      cleaner.strategy = :transaction
    end

    config.before :each, js: true do
      cleaner.strategy = :truncation
    end

    config.before :each do
      cleaner.start
    end

    config.after :each do
      cleaner.clean
    end
  end
end
