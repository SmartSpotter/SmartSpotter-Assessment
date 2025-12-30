# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :participants
  belongs_to :user
  belongs_to :room

  def overlaps_existing_booking?
    #Implement the method overlaps_existing_booking? that returns true if the booking overlaps another booking

  end

end
