class Raspberrypuree
	attr_reader :markdown, :username, :uri

	def initialize(options)
		site_url = options[:site_url]
		text = options[:text]
		@raspberrymark = '@'
		@username = find_user(text)
		@uri = "#{site_url}/#{@username.downcase}" # Quack!
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
