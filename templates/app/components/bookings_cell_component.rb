# frozen_string_literal: true

class BookingsCellComponent < ViewComponent::Base
  def initialize(date:, row:)
    @date = date
    @row = row
  end

  def bookings
    Booking.find_each.select { |booking| booking.range.include?(@date) }
  end

  def day_of_week_label?
    @row.zero?
  end

  def month_label?
    @date.mday == 1
  end
end
