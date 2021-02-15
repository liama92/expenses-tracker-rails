class ExpenseType < ApplicationRecord
  # Associations
  has_many :expenses, dependent: :destroy
  belongs_to :colour

  # Validations
  validates_presence_of :name

  # Scope 
  scope :ordered, -> { order(name: :asc) }

  def to_s
    name
  end


end
