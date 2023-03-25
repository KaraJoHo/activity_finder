class ActivityController < ApplicationController 
  def index 
    if params[:num_participants].to_i <= 0 || params[:num_participants].to_i > 5
      flash[:error] = "Incorrect Input"
      redirect_to root_path 
    else
      @json = ActivitiesFacade.new.activity_with_participants(params[:num_participants])
    end
  end
end