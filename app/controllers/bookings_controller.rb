class BookingsController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      respond_to do |format|
        format.html { redirect_to room_path(@room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'rooms/show' }
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:client, :room, :starts_at, :ends_at)

  end
end
