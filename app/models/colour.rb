class Colour < ApplicationRecord
  has_many :expense_types, dependent: :destroy

  # validations
  validates_presence_of :gradient
  validates_presence_of :primary
  end
