class Colour < ApplicationRecord
  # validations
  validates_presence_of :gradient
  validates_presence_of :primary
  
  belongs_to :expense_type, optional: true

end
