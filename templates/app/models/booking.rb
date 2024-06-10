class Booking < ApplicationRecord
  include AutoColor

  validates :name, length: { minimum: 2 }
  validates :starting, :ending, presence: true
  validate :ending_after_starting_validation
  validate :oversize_validation
  # validate :no_edit_past_validation

  def ending_after_starting_validation
    return if !ending || !starting

    errors.add(:ending, "must be after the starting time") if Time.at(ending) <= Time.at(starting)
  end

  def oversize_validation
    return if !ending || !starting

    errors.add(:base, "date range was too big") if (Time.at(ending) -  Time.at(starting)) > 14.days
  end

  # def no_edit_past_validation
  #   if Time.at(ending).to_date < Date.today || Time.at(starting).to_date < Date.today
  #     errors.add(:base, "cannot edit expired bookings")
  #   end
  # end

  # date range
  def range
    (Time.at(starting).to_date..Time.at(ending).to_date).to_a
  end

  # :reek:TooManyStatements
  def self.seed
    starting = Date.new(2024,5,27)
    ending = Date.new(2024,5,31)

    5.times do |index|
      Booking.create!(
        starting: starting.to_time.to_i,
        ending: ending.to_time.to_i,
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
    dt = Time.at(preferred_starting).to_date
    dt = dt.monday if dt.wday != 1  # make it a monday
    Booking.new(
      starting: dt.to_time.to_i,
      ending: (dt+4.days).to_time.to_i, # make it a friday
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
