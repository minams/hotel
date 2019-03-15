require "date"

module Hotel
  class Reservation
    attr_reader :id, :number_of_rooms, :start_date, :end_date, :number_of_nights, :total_cost

    COST = 200.00

    def initialize(phone_number:, number_of_rooms:, start_date:, end_date:)
      # do i really need number of rooms?
      # date could be date range?
      @id = phone_number.to_s
      raise ArgumentError, "Invalid ID length" if @id.length < 10

      @number_of_rooms = number_of_rooms
      @start_date = start_date
      @end_date = end_date

      if @start_date >= @end_date
        raise ArgumentError, "End date cannot be before start date."
      end
    end

    # def total_number_of_nights
    #   number_of_nights = (@end_date - @start_date)
    #   return number_of_nights
    # end

    def total_cost
      trip_total_cost = (@end_date - @start_date) * COST
      return trip_total_cost.round(2)
    end

    # number_of_nights = (( - 1)

    # @total_cost = (number_of_rooms * number_of_nights) * COST
    # # def make_a_reservation(date_range)

    # if @start_date != @end_date && @start_date
    #   number_of_nights = ((@end_date - @start_date) - 1)
    # elsif (@end_date - @start_date = 0)
    #   number_of_nights = 1
    # end
    # # end

    # def find_a_room(date_range)
    #   begin
    #     @room.available?(status)

    #     raise ArgumentError, "Room is unavailable for this range."
    #   rescue
    #   end
    # end
  end
end
