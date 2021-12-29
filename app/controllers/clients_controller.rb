class ClientsController < ApplicationController
  

  # GET /clients
  def index
    @clients = Client.all

    render json: @clients
  end

  # GET /clients/1
  def show
    @client = Client.find_by(user: params[:u])
    render json: {user: @client.user, requests: @client.requests}
  end

  # POST /clients
  def create
    @client = Client.new(user: (params[:client][:user]).downcase.gsub(" ",""), requests: 0)

    if @client.save and not @client[:user].nil?
      render json: { status: :usercreated }
    else
      render json: @client.errors
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:user, :request)
    end
end
