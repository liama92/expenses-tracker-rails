class ExpenseType < ApplicationRecord
  # Associations
  has_many :expenses, dependent: :destroy
  has_one :colour

  # Validations
  validates_presence_of :name

  # Scope 
  scope :ordered, -> { order(name: :asc) }

end
