class LeadsController < ApplicationController
  def index; end

  def create
    @lead = Lead.create(name: params[:name], email: params[:email])
    if @lead.save
      flash[:success] = 'Email cadastrado com sucesso!'
    else
      flash[:alert] = 'Email cadastrado anteriormente.'
    end
    redirect_to :root
  end
end
