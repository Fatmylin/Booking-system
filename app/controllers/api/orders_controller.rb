class Api::OrdersController < ApplicationController


	def create
		@order = Order.new order_params
		exist_orders = Order.where("room_id = ?",order_params[:room_id])
		#check if dates collide or not
		flag = true

		exist_orders.each do|exist_order|
			if @order.check_in < exist_order.check_in && @order.check_out <= exist_order.check_in 
		  	    flag = true
		  	elsif @order.check_in >= exist_order.check_out && @order.check_out > exist_order.check_out	
				flag = true
		  	else
		  		flag = false
		  		break
		  	end
		 end

		 if flag
		  @order.save
		  render json: @order, code:200			  
		 else
		  render json: {errors:"該時段房型已無空房"}, code:"TIME_INVALID_001"
		 end
	end


	def index

		@orders = Order.all
		render json: @orders
	end

private
	
	def order_params
		params.require(:order).permit(:room_id,:check_in,:check_out)
	end
end