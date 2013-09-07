class Log < ActiveRecord::Base

  "
  "
  def self.find_of_month(date_string, page)
    date = date_string && date_string.length >= 6 ? Time.parse(date_string[0,6] + "01") : Time.now
    st = Time.local(date.year, date.month, 1, 0, 0, 0)
    ed = date.end_of_month
    self.where('? <= date and date <= ?', st, ed).order(:date => :desc).page(page || 1)
  end

  "
  "
  def self.search_message(query, page)
    query = query.strip
    return [] if query == ''

    Log.where('message like ?', "%" + query + "%").page(page || 1)
  end
end
