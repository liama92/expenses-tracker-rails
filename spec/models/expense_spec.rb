require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe "associations" do
    it { should belong_to(:expense_type) }
  end

  describe "validations" do
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:spent_on) }
  end
end
