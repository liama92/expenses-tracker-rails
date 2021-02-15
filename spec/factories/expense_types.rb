FactoryBot.define do
  factory :expense_type do
    name { "shopping" }
    colour { FactoryBot.create(:colour) }
  end
end
