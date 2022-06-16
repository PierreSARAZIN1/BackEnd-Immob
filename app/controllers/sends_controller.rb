class SendsController < ApplicationController
  before_action :set_send, only: %i[ show update destroy ]
  before_action :authenticate_user!

  # GET /sends
  def index
    @sends = Send.all

    render json: @sends
  end

  # GET /sends/1
  def show
    render json: @send
  end


  def create


    @send = Send.new(send_params)

    @receife = Receive.new(
      'content' => @send.content,
      'sender' => @send.user_id,
      'user_id' => @send.receiver,
      'advert_id' => @send.advert_id
    )

    

    if @send.save && @receife.save
      render json: {
        sender: @send,
        receiver: @receife
        
      }, status: :created, location: {
        sender: @send,
        receiver: @receife
       }
      # render json: @send, status: :created, location: @send
      # render json: @receife, status: :created, location: @receife
    else
      render json: {
        sender: @send.errors,
        receiver: @receife.errors
        
      }, status: :unprocessable_entity
      # render json: @send.errors, status: :unprocessable_entity
      # render json: @receife.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sends/1
  # def update
  #   if @send.update(send_params)
  #     render json: @send
  #   else
  #     render json: @send.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /sends/1
  def destroy
    @send.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send
      @send = Send.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_params
      params.require(:send).permit(:content, :receiver, :user_id, :advert_id)
    end

    
end
