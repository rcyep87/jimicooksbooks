class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payees
  has_many :accounts
  has_many :transactions, through: :accounts
end
