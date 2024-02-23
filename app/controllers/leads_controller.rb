class LeadsController < ApplicationController
  def create
    @lead = Lead.create(name: params[:name], email: params[:email])
    if @lead.save
      LeadMailer.welcome_email(@lead, I18n.locale).deliver_now
      flash[:success] = t('leads.create.success')
    else
      flash[:alert] = t('leads.create.alert')
    end
    redirect_to :root
  end
end
