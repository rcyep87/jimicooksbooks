class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :payee

  #validate that there is either a debit or credit, for each instance, not both, for now default both to zero
end
