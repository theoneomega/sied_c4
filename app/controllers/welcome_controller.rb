class WelcomeController < ApplicationController

  def index
    @agente = "Joel" # Analista.find_by_name!(params[:id])
    
  end
end
