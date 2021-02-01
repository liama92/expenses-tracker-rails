module ExpensesHelper
  def expenses_bar(expenses)
    overall_total = expenses.sum { |r| r[:amount] }
    expense_types = expenses.map {|x| {name: x.expense_type.name, total: 0.0, percent: 0.0, color: x.expense_type.colour.first}}.uniq
    
    expenses.each do |expense| 
        current_expense_type = expense_types.select {|x| x[:name] == expense.expense_type.name  }.last
        current_expense_type[:total] += expense.amount.to_f
    end
    
    expense_types.each do |expense_type| 
        expense_type[:percent] = (expense_type[:total] * 100.0) / overall_total.to_f
    end

    render(partial: 'bar', locals: { expense_types: expense_types })
  end
end
