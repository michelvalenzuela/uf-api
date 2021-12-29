class AdjustInfsController < ApplicationController
  


   # GET /uf/:day
   def show
    user_name_value = request.headers['key-client']

    if Client.exists?(user: user_name_value)
      @client = Client.find_by(user: user_name_value)
      @adjust_inf = AdjustInf.find_by(day: params[:d])
      
      if not @adjust_inf.nil?
        if not @adjust_inf.errors.any?
          @client.update_attribute(:requests, @client.requests + 1)
          render json: { day: @adjust_inf.day, price: @adjust_inf.price, user_requests: @client.requests }
        else
          render json: @adjust_inf.errors
        end
      else
        render json: {status: "No Encontrado.."}
      end
    else
      render json: {status: "Añadir key de user.."}
    end

  end

  # PATCH/PUT /adjust_infs/1
 

 


end
