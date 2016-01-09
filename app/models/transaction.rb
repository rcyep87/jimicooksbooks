class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :payee
  before_save :negate_debit_entry

  validates :debit, :numericality => { :greater_than => 0 }
  # validates :credit, :numericality => { :greater_than => 0 }


  #validate that there is either a debit or credit, for each instance, not both, for now default both to zero

  def negate_debit_entry
    self.debit = -(self.debit)
  end

end
