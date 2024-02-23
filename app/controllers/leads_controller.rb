class LeadsController < ApplicationController
  def index; end

  def create
    @lead = Lead.create(name: params[:name], email: params[:email])
    if @lead.save
      flash[:success] = t('leads.create.success')
    else
      flash[:alert] = t('leads.create.alert')
    end
    redirect_to :root
  end
end
