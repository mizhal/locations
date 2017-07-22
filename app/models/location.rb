class Location < ApplicationRecord
  has_many :periods
  accepts_nested_attributes_for :periods

  def open?
    now = Time.now
    day = Date.today.wday
    ## filtrado en memoria que son pocos elementos 
    periods.select{|p| p.day == day}
           .select{|p| p.start.hour <= now.hour && now.hour <= p.end.hours}
           .select{|p| p.start.min <= now.min && now.min <= p.end.min}
           .any?
  end
end
