# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test+#{n}@selise.ch" }
    password { 'Selise88' }

    after(:build) do |user|
      !user.profile && user.profile = build(:profile)
    end
  end
end
