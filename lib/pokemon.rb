class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, database)
    sql = <<-SQL
    INSERT INTO pokemon
    (name, type)
    VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, name, type)

    sql_2 = "SELECT last_insert_rowid() FROM pokemon"
    self.id = DB[:conn].execute(sql_2)[0][0]
    binding.pry
  end







end
