class TicketsController < ApplicationController
  before_action :find_ticket

  def show; end

  def destroy
    @ticket.destroy

    redirect_back(fallback_location: root_path)
  end
  
  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end  
end  