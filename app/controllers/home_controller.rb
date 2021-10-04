class HomeController < ApplicationController

  before_action :mapkey_init
  def index

    @contact = Home.new(params[:home])
    @products = Product.all
  end

  def create
    @contact = Home.new(params[:home])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Home.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = t('message.sended') }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end
  private
  def mapkey_init
    @map = Map.all
      @map.each do |key|
      @key = key.key
    end
  end

end
