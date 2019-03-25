def get_first_name_of_season_winner(data, season)
  # code here
  # for main_key in hash.keys
  #   if main_key = season 
  #     hash[:main_key][:name]
  #   end 
  # end

  # hash[season].each do |data|
  #   if data["status"] == "Winner"
  #     return name.split.first 
  #   end
  # end
  
  data[season].each do |acter| 
    if acter["status"] == "Winner"
      return acter["name"].split.first
    end
  end
  
end

def get_contestant_name(data, occupation)
  # code here
  
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
