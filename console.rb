require("pry")
require_relative("models/bounty")

fugitive1 = Bounty.new({
  "name"=> "Harrison Ford",
  "bounty_value" => "1000",
  "last_known_location" => "Mars",
  "favourite_weapon" => "pistol"
  })

fugitive1.save()

fugitive2 = Bounty.new({
  "name"=> "Dylan Smith",
  "bounty_value" => "80",
  "last_known_location" => "Saturn",
  "favourite_weapon" => "knife"
  })

fugitive2.save()

binding.pry
nil
