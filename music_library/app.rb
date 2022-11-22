require_relative 'lib/database_connection'
require_relative 'lib/artist_repository'

DatabaseConnection.connect('music_library')

result = DatabaseConnection.exec_params('SELECT * FROM artists;', [])

artist_repository = ArtistRepository.new

artist_repository.all.each do |artist|
  p artist
end
