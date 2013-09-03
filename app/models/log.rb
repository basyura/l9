class Log < ActiveRecord::Base
  def self.find_of_month(date)
    st = Time.local(date.year, date.month, 1, 0, 0, 0)
    ed = date.end_of_month
    self.where('? <= date and date <= ?', st, ed).all
  end
end
