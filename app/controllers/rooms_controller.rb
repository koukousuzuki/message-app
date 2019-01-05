class RoomsController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :show, :index, :edit, :update]
  
  def create
    @room = Room.create
    redirect_to "/rooms/#{@room.id}"
    flash[:notice] = "チャットを作成しました!"
  end
  
  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
    @message = Message.new
  end
  
  def index
    @room = Room.all
  end
  
  def edit
    @room = Room.find(params[:id])
  end
  
  def update
    @room = Room.find(params[:id])
    @room.update(params.require(:room).permit(:name, :explain))
    flash[:notice] = "チャット情報が編集されました"
    redirect_to :room
  end
  
end
