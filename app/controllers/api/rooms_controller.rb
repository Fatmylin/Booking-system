class Api::RoomsController < ApplicationController


	def homepage
		
	end

	def index

		check_in = params[:check_in]
		check_out = params[:check_out]

		if check_in.nil? && check_out.nil?
			
			@rooms = Room.all
			render json: @rooms

		else
			#find date in exist orderes which collide with check_in & check_out
			@booked_ordersA = Order.where.not(["check_in <= ? and check_out < ?", check_in, check_in])
			@booked_ordersB = Order.where.not(["check_in >= ? and check_out > ?", check_out, check_out])
			@booked_orders = @booked_ordersA.merge @booked_ordersB
			#mapping the colliding order into an array
			@booked_rooms = @booked_orders.map { |hash| hash[:room_id]  }
			#find empty room 
			@rooms = Room.where.not(id:@booked_rooms)
			render json: @rooms
			
		end


 


	end


end
