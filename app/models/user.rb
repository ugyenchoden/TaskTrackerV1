class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_one :profile, dependent: :destroy
  has_many :tasks, dependent: :destroy

  accepts_nested_attributes_for :profile, :tasks
end
