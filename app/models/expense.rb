class Expense < ApplicationRecord
  # asociations
  belongs_to :expense_type

  # validations
  validates_presence_of :amount
  validates_presence_of :spent_on

end
