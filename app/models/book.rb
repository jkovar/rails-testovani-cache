class Book < ActiveRecord::Base
  attr_accessible :publisher, :title, :year

  def century
    Time.new(year).strftime('%C')
  end

end
