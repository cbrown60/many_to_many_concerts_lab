require_relative('../db/sql_runner.rb')

class Gig

def initialize( options )
  @id = options['id'].to_i
  @venue_id = options['venue_id'].to_i
  @artist_id = options['artist_id'].to_i
  @date = options['date']
end

  def save()
    sql = "INSERT INTO gigs (venue_id, artist_id, date) VALUES (#{@venue_id}, #{@artist_id},'#{date}') RETURNING id "
    gig = SqlRunner.new(sql).first
    @id = gig['id'].to_i 

  end




end