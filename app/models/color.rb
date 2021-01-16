class Color < ApplicationRecord
  # validations
  validates_presence_of :gradient
  validates_presence_of :primary

end
