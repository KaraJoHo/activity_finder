class ActivitiesFacade 

  def activity_with_participants(num_participants)
    activity_response = service.get_activity(num_participants)
    json = JSON.parse(activity_response.body, symbolize_names: true)

    activity = Activity.new(json)
  end

  def service 
    ActivityService.new
  end
end