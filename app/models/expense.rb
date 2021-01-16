class Expense < ApplicationRecord
  # asociations
  belongs_to :expense_type

  # validations
  validates_presence_of :amount
  validates_presence_of :spent_on

  def to_s
    expense_type.name
  end

  def formatted_amount
#    number_to_currency(amount, unit: "£")
  end
end
