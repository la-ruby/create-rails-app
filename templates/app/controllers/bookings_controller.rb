class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update]

  def index
    if !session[:bookings_index_month]
      session[:bookings_index_month] = Date.today.beginning_of_month.strftime("%B %Y")
    end
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.errors.present?
      session[:flash] = @booking.errors.full_messages.join(". ")
      session[:flash_stamp] = Time.now.utc.to_i
      respond_to do |format|
        format.turbo_stream {
          render turbo_stream: [
                   turbo_stream.replace("partial-bookings-form", partial: "/bookings/form", locals: { booking: @booking}),
                   turbo_stream.replace("partial-flash", partial: "/flash", locals: { })
                 ]
        }
      end
    else
      respond_to do |format|
        format.turbo_stream {
          session[:flash] = 'Saved'
          session[:flash_stamp] = Time.now.utc.to_i
          redirect_to "/bookings"
        }
      end
    end
  end

  def update
    @booking.update(booking_params)
    if @booking.errors.present?
      session[:flash] = @booking.errors.full_messages.join(". ")
      session[:flash_stamp] = Time.now.utc.to_i
      respond_to do |format|
        format.turbo_stream {
          render turbo_stream: [
                   turbo_stream.replace("partial-bookings-form", partial: "/bookings/form", locals: { booking: @booking}),
                   turbo_stream.replace("partial-flash", partial: "/flash", locals: { })
                 ]
        }
      end
    else
      respond_to do |format|
        format.turbo_stream {
          session[:flash] = 'Saved'
          session[:flash_stamp] = Time.now.utc.to_i
          redirect_to "/bookings"
        }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:starting, :ending, :name, :gmail, :granted, :trello)
    end
end
