module ApplicationHelper
  def format_date(number)
    months = [
      "January", "February", "March", "April", 
      "May", "June", "July", "August", "September", 
      "October", "November", "December"
    ]
    months[number - 1]
  end
end
