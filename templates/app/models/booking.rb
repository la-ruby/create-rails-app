class Booking < ApplicationRecord
  include AutoColor

  validates :name, length: { minimum: 2 }
  validates :starting, :ending, presence: true
  validate :ending_after_starting_validation
  validate :oversize_validation
  # validate :no_edit_past_validation

  def ending_after_starting_validation
    return if !ending || !starting

    errors.add(:ending, "must be after the starting time") if Time.zone.at(ending).utc <= Time.zone.at(starting).utc
  end

  def oversize_validation
    return if !ending || !starting

    errors.add(:base, "date range was too big") if (Time.zone.at(ending).utc -  Time.zone.at(starting).utc) > 14.days
  end

  # def no_edit_past_validation
  #   if Time.zone.at(ending).to_date < DateTime.now.utc.to_date || Time.zone.at(starting).utc.to_date < Date.today
  #     errors.add(:base, "cannot edit expired bookings")
  #   end
  # end

  # date range
  def range
    (Time.zone.at(starting).utc.to_date..Time.zone.at(ending).utc.to_date).to_a
  end

  # :reek:TooManyStatements
  def self.seed
    starting = Date.new(1970,1,5)
    ending = Date.new(1970,1,9)

    5.times do |index|
      Booking.create!(
        starting: starting.in_time_zone("UTC").to_time.to_i,
        ending: ending.in_time_zone("UTC").to_time.to_i,
        name: (index % 2 == 0 ? "Acme Corp #{index}" : "Acme Corp #{index}#{'_'*20}"),
        gmail: true,
        granted: true,
        trello: true
      )
      starting += 3.weeks
      ending += 3.weeks
    end
  end

  def self.new_record(preferred_starting)
    dt = Time.zone.at(preferred_starting).utc.to_date
    dt = dt.monday if dt.wday != 1  # make it a monday
    Booking.new(
      starting: dt.in_time_zone("UTC").to_time.to_i,
      ending: (dt+4.days).in_time_zone("UTC").to_time.to_i, # make it a friday
      gmail: true,
      granted: true,
      trello: true
    )
  end

  def starts?(date)
    range[0] == date
  end

  def ends?(date)
    range[-1] == date
  end
end
