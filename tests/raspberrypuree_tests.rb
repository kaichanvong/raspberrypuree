require "minitest/autorun"
require_relative "../raspberrypuree.rb"

class TestRaspberrypuree < Minitest::Test
	def setup
		@puree = Raspberrypuree.new({site_url:'https://github.com', text: ' here is a example from the user @KittyKai about his user info of copied text '})
	end

	def test_markdown
		assert_equal('[@KittyKai](https://github.com/kittykai)', @puree.markdown)
	end

	def test_uri
		assert_equal('https://github.com/kittykai', @puree.uri)
	end

	def test_username
		assert_equal('KittyKai', @puree.username)
	end

	def test_nickname
		assert_equal('Kitty', @puree.nickname)
	end

end
