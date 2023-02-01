class BookingsController < ApplicationController
  before_action :authenticate_user!, only: :index
  def index
   @bookings = Booking.all
  end
end
