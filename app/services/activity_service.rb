class ActivityService 
  def get_activity(num_participants)
    get_url("?participants=#{num_participants}")
  end

  def conn 
    Faraday.new(url: "http://www.boredapi.com/api/activity")
  end

  def get_url(url)
    conn.get(url)
  end
end