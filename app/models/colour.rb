class Colour < ApplicationRecord
  # validations
  validates_presence_of :gradient
  validates_presence_of :primary
  validates_presence_of :expense_type
  
  belongs_to :expense_type

end
