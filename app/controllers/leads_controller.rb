class LeadsController < ApplicationController
  def create
    @lead = Lead.create(name: params[:name], email: params[:email])

    if @lead.save
      flash[:success] = t('leads.create.success')
      begin
        LeadMailer.welcome_email(@lead, I18n.locale).deliver_now
      rescue StandardError => e
        Rails.logger.error("Error delivering email: #{e.message}")
      end
    else
      flash[:alert] = t('leads.create.alert')
    end

    redirect_to :root
  end
end
