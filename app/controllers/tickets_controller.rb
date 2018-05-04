class TicketsController < ApplicationController

  before_action :set_ticket, only: [:show, :update, :edit, :destroy]

  def index
    @tickets = Ticket.order(:created_at)
  end

  def new
    @ticket = Ticket.new
  end
    
  def create
    @ticket = Ticket.new(ticket_params)
      if @ticket.save
        redirect_to @ticket
      else
        render :new
      end    
  end  

  def show; end

  def edit; end  

  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :edit
    end  
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end
    
  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end  

  def ticket_params
    params.require(:ticket).permit(:train_id, :user_id, :first_station, :last_station, :place_number, :carrige_number)
  end  
end  