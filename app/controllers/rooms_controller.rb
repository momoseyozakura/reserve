class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
    @room = Room.find_by(id: params[:id])
  end

  def update 
    @room = Room.find_by(id: params[:id])
   if @room.update(update_params)
      redirect_to("/")
   else
      render :edit
   end
  end

  private
  def room_params
    params.permit(:name, :memo , :fee , :area , :image,:give_id).merge(give_id: current_user.id)
  end

  def update_params
    params.permit(:take_id, :number, :start_date, :end_date).merge(take_id: current_user.id)
  end
end
