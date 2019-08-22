class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save 
    if self.id 
    else 
      sql = <<-SQL 
      INSERT INTO pokemon
      (name, type)
      VALUES (?, ?)
      SQL 
      

end
