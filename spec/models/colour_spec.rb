require 'rails_helper'

RSpec.describe Colour, type: :model do

  describe "validations" do
    it { should validate_presence_of(:primary) }
    it { should validate_presence_of(:gradient) }
  end
end
