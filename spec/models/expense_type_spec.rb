require 'rails_helper'

RSpec.describe ExpenseType, type: :model do
  describe "associations" do
    it { should have_one(:colour) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
