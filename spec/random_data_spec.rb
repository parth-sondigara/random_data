# frozen_string_literal: true

require "spec_helper"

RSpec.describe RandomData::Generator do
  it "generates a random name" do
    expect(RandomData::Generator.random_name).to be_a(String)
  end

  it "generates a random address" do
    expect(RandomData::Generator.random_address).to be_a(String)
  end

  it "generates a random email" do
    expect(RandomData::Generator.random_email).to match(/\A[^@\s]+@[^@\s]+\z/)
  end

  it "generates a random phone number" do
    expect(RandomData::Generator.random_phone_number).to be_a(String)
  end
end
