# app/controllers/users_controller.rb

class UsersController < ApplicationController
  before_action :set_leads, only: %i[index download_leads]

  def index; end

  def download_leads
    leads_data = @leads.map { |lead| "#{lead.name} - #{lead.email}" }.join("\n")

    send_data leads_data, filename: 'leads_data.txt', type: 'text/plain', disposition: 'attachment'
  end

  private

  def set_leads
    @leads = Lead.all
  end
end
