class OrdersController < ApplicationController

	def destroy
  current_order.destroy
  session[:order_id] = nil
  redirect_to root_path, :notice => "La canasta se vació completamente."
end



end
