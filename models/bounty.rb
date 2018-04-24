require("pg")

class Bounty

attr_accessor :name, :bounty_value, :last_known_location, :favourite_weapon

def initialize(options)
  @id = options["id"].to_i if options["id"]
  @name = options["name"]
  @bounty_value = options["bounty_value"].to_i
  @last_known_location = options["last_known_location"]
  @favourite_weapon = options["favourite_weapon"]
end

  def save()
    db = PG.connect({
    dbname: "bounty_hunter",
    host: "localhost"
    })
    sql = "INSERT INTO bountys
    (name,
    bounty_value,
    last_known_location,
    favourite_weapon)
    VALUES
      ($1, $2, $3, $4) RETURNING id"
      values = [@name, @bounty_value, @last_known_location, @favourite_weapon]
      db.prepare("save", sql)
      @id = db.exec_prepared("save", values)[0]["id"].to_i
      db.close()
    end

    def update()
      db = PG.connect({
      dbname: "bounty_hunter",
      host: "localhost"
      })
      sql = "UPDATE bountys
      SET (name,
      bounty_value,
      last_known_location,
      favourite_weapon) = ($1, $2, $3, $4) WHERE id = $5"
      values = [@name, @bounty_value, @last_known_location, @favourite_weapon]
      db.prepare("update", sql)
      db.exec_prepared("update", values)
      db.close()
    end



  end
