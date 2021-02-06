# frozen_string_literal: true

Colour.delete_all
Expense.delete_all
ExpenseType.delete_all

colour_1 = Colour.create!(
  primary: "#bf0f0f",
  gradient: "linear-gradient(90deg, rgba(191,15,15,1) 0%, rgba(237,164,5,1) 100%);"
)


expense_type_1 = ExpenseType.create!(
  name: "Shopping",
  colour: colour_1,
)


Expense.create!(
  amount: 200,
  spent_on: Date.new(2020, 9, 15),
  expense_type: expense_type_1
)
