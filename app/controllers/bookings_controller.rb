class BookingsController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:client, :room, :starts_at, :ends_at)

  end
end
