class FlashMessagesController < ApplicationController
  before_action :set_flash_message, only: [:show, :edit, :update, :destroy]

  # GET /flash_messages
  # GET /flash_messages.json
  def index
    @flash_messages = FlashMessage.all
  end

  # GET /flash_messages/1
  # GET /flash_messages/1.json
  def show
  end

  # GET /flash_messages/new
  def new
    @flash_message = FlashMessage.new
  end

  # GET /flash_messages/1/edit
  def edit
  end

  # POST /flash_messages
  # POST /flash_messages.json
  def create
    @flash_message = FlashMessage.new(flash_message_params)

    respond_to do |format|
      if @flash_message.save
        format.html { redirect_to @flash_message, notice: 'Flash message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flash_message }
      else
        format.html { render action: 'new' }
        format.json { render json: @flash_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flash_messages/1
  # PATCH/PUT /flash_messages/1.json
  def update
    respond_to do |format|
      if @flash_message.update(flash_message_params)
        format.html { redirect_to @flash_message, notice: 'Flash message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flash_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flash_messages/1
  # DELETE /flash_messages/1.json
  def destroy
    @flash_message.destroy
    respond_to do |format|
      format.html { redirect_to flash_messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flash_message
      @flash_message = FlashMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flash_message_params
      params.require(:flash_message).permit(:message, :site, :message_type)
    end
end
