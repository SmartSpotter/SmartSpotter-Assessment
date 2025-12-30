# frozen_string_literal: true
class BookingsController < ApplicationController
  before_action :authorize_request, except: :index

  # GET /bookings
  # Get all bookings
  def index
    bookings = Booking.all

    if bookings
      render json: { status: 'Success', message: 'Successfuly got all bookings', data: bookings }, status: :ok
    else
      render json: { status: 'Error', message: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  # POST /rooms/:room_id/bookings
  # Create booking
  def create
    #Implement the create method that creates a Booking only if it does not overlap with an existing booking
  end

  # PATCH bookings/:id
  # Update booking
  def update
    booking = Booking.find(params[:id])
    
    # Check if user is the owner of the booking
    if current_user. == booking.user_id
      if booking.update_attributes(booking_params) 
        render json: { status: 'Success', message: 'Updated booking', data: booking }, status: :ok
      else
        render json: { status: 'Error', message: 'Booking not updated', data: booking.Errors }, status: :unprocessable_entity
      end
    end
  end

  # DELETE bookings/:id
  # Delete booking
  def destroy
    booking = Booking.find(params[:id])

    # Check if user is the owner of the booking
    if current_user[:id] == booking[:user_id]
      if booking.destroy
        render json: { status: 'Success', message: 'Deleted booking', data: booking }, status: :ok
      else
        render json: { status: 'Error', message: 'Something went wrong' }, status: :unprocessable_entity
      end
    end
  end

  private

  def booking_params
    params.require(
      :booking
    ).permit(
      :start_date,
      :end_date,
      :user_id,
      :room_id
    )
  end
end
