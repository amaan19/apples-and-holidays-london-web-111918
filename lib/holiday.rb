require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |s, h|
  h.each do |o, r|
    if o == :christmas|| :new_years
      r << supply
    end
  end
end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |s, h|
    h.each do |o, m|
      if o == :memorial_day
        m << supply
end
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
x = []
holiday_hash.each do |s, o|
  if s == :winter
    o.collect do |h, m|
     x << m
end
end
end
x.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |s, o|
    puts "#{s.capitalize}:"

    o.each do |h, m|
      x = h.to_s.gsub("_"," ")
      y = x.split()
      y.map {|x| x.capitalize! }
      puts "  #{y.join(" ")}: #{m.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  x = []
  holiday_hash.collect do |s, o|
    o.collect do |h, m|
    if m.include?("BBQ") == true
      x << h

end
end
end
x
end
