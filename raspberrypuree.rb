class Raspberrypuree
	attr_reader :markdown, :username, :uri, :nickname

	def initialize(options)
		site_url = options[:site_url]
		text = options[:text]
		@raspberrymark = '@'
		@username = find_user(text)
		@nickname = nicknames_finder(@username)
		@uri = "#{site_url}/#{@username.downcase}" # Quack!
	end

	def nicknames_finder(username)
		nickname_length = 3
		possible_nicknames_known = %w{Kit Kitteh Kitty}
		nick_names = possible_nicknames_known.select do |nickname|
			nickname if username.include?(nickname) # && nickname.length > nickname_length
		end
		nick_names.compact.last
	end

	def markdown
		"[#{@raspberrymark}#{@username}](#{@uri})"
	end

	private
	def find_user(text)
		text.split(@raspberrymark)[1].split(' ')[1-1]
	end

	def results
		@markdown
	end		
end
