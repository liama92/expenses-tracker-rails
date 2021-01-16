# frozen_string_literal: true

Colour.delete_all
Expense.delete_all
ExpenseType.delete_all


expense_type_1 = ExpenseType.create!(
  name: "Shopping",
)

expense_type_2 = ExpenseType.create!(
  name: "Direct Debit",
)

expense_type_3 = ExpenseType.create!(
  name: "Takeaway",
)

expense_type_4 = ExpenseType.create!(
  name: "Petrol",
)

expense_type_5 = ExpenseType.create!(
  name: "Gifts",
)

expense_type_6 = ExpenseType.create!(
  name: "Smoking",
)

expense_type_7 = ExpenseType.create!(
  name: "Travel",
)

colour_1 = Colour.create!(
  expense_type: expense_type_1,
  primary: "#bf0f0f",
  gradient: "linear-gradient(90deg, rgba(191,15,15,1) 0%, rgba(237,164,5,1) 100%);"
)


colour_2 = Colour.create!(
  expense_type: expense_type_2,
  primary: "#ee7d09",
  gradient: "linear-gradient(90deg, rgba(238,125,9,1) 0%, rgba(255,231,57,1) 100%);"
)

colour_3 = Colour.create!(
  expense_type: expense_type_3,
  primary: "#88fb35",
  gradient: "linear-gradient(90deg, rgba(136,251,53,1) 0%, rgba(191,255,12,1) 100%);"
)

colour_5 = Colour.create!(
  expense_type: expense_type_4,
  primary: "#3567fb",
  gradient: "linear-gradient(90deg, rgba(53,103,251,1) 0%, rgba(12,170,255,1) 100%);"
)

colour_6 = Colour.create!(
  expense_type: expense_type_5,
  primary: "#353efb",
  gradient: "linear-gradient(90deg, rgba(53,62,251,1) 0%, rgba(98,12,255,1) 100%);"
)

colour_4 = Colour.create!(
  expense_type: expense_type_6,
  primary: "#620cff",
  gradient: "linear-gradient(90deg, rgba(98,12,255,1) 0%, rgba(153,53,251,1) 100%);"
)

colour_7 = Colour.create!(
  expense_type: expense_type_7,
  primary: "#ff0ca2",
  gradient: "linear-gradient(90deg, rgba(255,12,162,1) 0%, rgba(251,53,69,1) 100%);"
)

Colour.create!(
  primary: "#ffb2a2",
  gradient: "linear-gradient(90deg, rgba(255,12,162,1) 0%, rgba(251,53,69,1) 100%);"
)


Expense.create!(
  amount: 30,
  spent_on: Date.new(2020, 9, 5),
  expense_type: expense_type_1
)


Expense.create!(
  amount: 10,
  spent_on: Date.new(2020, 10, 5),
  expense_type: expense_type_1
)

Expense.create!(
  amount: 50,
  spent_on: Date.new(2020, 10, 7),
  expense_type: expense_type_2
)

Expense.create!(
  amount: 200,
  spent_on: Date.new(2020, 9, 15),
  expense_type: expense_type_3
)

Expense.create!(
  amount: 70,
  spent_on: Date.new(2020, 8, 5),
  expense_type: expense_type_1
)

Expense.create!(
  amount: 140,
  spent_on: Date.new(2020, 9, 5),
  expense_type: expense_type_1
)

Expense.create!(
  amount: 210,
  spent_on: Date.new(2021, 1, 5),
  expense_type: expense_type_3
)

Expense.create!(
  amount: 210,
  spent_on: Date.new(2021, 2, 5),
  expense_type: expense_type_3
)

Expense.create!(
  amount: 210,
  spent_on: Date.new(2019, 12, 25),
  expense_type: expense_type_3
)