# frozen_string_literal: true

require_relative "random_data/version"

module RandomData
  class Error < StandardError; end

  class Generator
    require "faker"

    def self.random_name
      Faker::Name.name
    end

    def self.random_address
      Faker::Address.full_address
    end

    def self.random_email
      Faker::Internet.email
    end

    def self.random_phone_number
      Faker::PhoneNumber.phone_number
    end
  end
end
