require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here

  for main_key in data.keys
    if main_key == season
      # binding.pry
      for i in data[main_key]
         if  i["status"]== "Winner"
        return   i["name"].split(" ").first
         end
      end
    end
  end
end



  # data[season].each do |acter|
  #   if acter["status"] == "Winner"
  #     return acter["name"].split.first
  #   end
  # end

# end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    for player in season[1]
      # binding.pry
      if player["occupation"]== occupation
      return player["name"]

    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter=0
    data.each do |season|
      for player in season[1]
        if player["hometown"] == hometown

      counter+=1
    end
  end
end
    counter
end


def get_occupation(data, hometown)
  # code here
  data.each do |season|
    for player in season[1]
      if player["hometown"] == hometown
        return player["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  empty_age=[]
data[season].each do |player|

  empty_age << player["age"].to_f
end
  (empty_age.sum/(empty_age.length)).round
end
