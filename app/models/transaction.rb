class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :payee
  before_save :check_only_one_entry
  before_save :negate_debit_entry



  # validates :debit, :numericality => { :less_than_or_equal_to => 0 }
  validates :credit, :numericality => { :greater_than => 0, :allow_blank => true }

  #validate that there is either a debit or credit, for each instance, not both

  def negate_debit_entry
    self.debit = -(self.debit) unless self.debit.nil?
  end

  def check_only_one_entry
    if self.credit != nil && self.debit != nil
      false
    end
  end


end
