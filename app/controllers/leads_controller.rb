class LeadsController < ApplicationController
  def index; end

  def create
    @lead = Lead.new(name: params[:name], email: params[:email])
    @lead.save
    redirect_to :root
  end
end
