class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :payee
  before_save :negate_debit_entry
  before_save :check_credit_entry


  # validates :debit, :numericality => { :less_than_or_equal_to => 0 }
  validates :credit, :numericality => { :greater_than_or_equal_to => 0 }

  #validate that there is either a debit or credit, for each instance, not both, for now default both to zero

  def negate_debit_entry
    self.debit = -(self.debit)
  end

  def check_credit_entry
    if self.credit > 0
      self.debit = 0
    end
  end

end
