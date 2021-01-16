class ExpenseType < ApplicationRecord
  # asociations
  has_many :expenses
  has_one :colour

  # validations
  validates_presence_of :colour
  validates_presence_of :name

end
