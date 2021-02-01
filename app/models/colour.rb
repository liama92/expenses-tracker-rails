class Colour < ApplicationRecord
  # validations
  validates_presence_of :gradient
  validates_presence_of :primary
  
  has_and_belongs_to_many :expense_type, optional: true

end
