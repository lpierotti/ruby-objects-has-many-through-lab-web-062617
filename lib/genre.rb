class Genre

	attr_accessor :name, :songs, :artists

	def initialize(name)
		@name = name
		@songs = []
		@artists = []

	end

	def add_song(song)
		@songs << song
		@artists << song.artist
	end

	def artists
		self.songs.map do |song|
			song.artist
		end
	end

end