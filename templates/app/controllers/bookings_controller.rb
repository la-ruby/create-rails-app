class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update]

  def index
    if !session[:bookings_index_month]
      session[:bookings_index_month] = DateTime.now.utc.to_date.beginning_of_month.strftime("%B %Y")
    end
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.errors.present? ? flash_error_and_refresh_modal : flash_and_refresh_modal
  end

  def update
    @booking.update(booking_params)
    @booking.errors.present? ? flash_error_and_refresh_modal : flash_and_refresh_modal
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

    def flash_and_refresh_modal
      respond_to do |format|
        format.turbo_stream {
          session[:flash] = 'Saved'
          session[:flash_stamp] = Time.now.utc.to_i
          redirect_to "/bookings"
        }
      end
    end

    def flash_error_and_refresh_modal
      session[:flash] = @booking.errors.full_messages.join(". ")
      session[:flash_stamp] = Time.now.utc.to_i
      respond_to do |format|
        format.turbo_stream {
          render turbo_stream: [
                   turbo_stream.replace("partial-bookings-form", partial: "/bookings/form", locals: { booking: @booking}),
                   turbo_stream.replace("partial-flash", partial: "/flashes", locals: { })
                 ]
        }
      end
    end
end
