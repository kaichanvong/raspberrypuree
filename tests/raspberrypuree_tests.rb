require "minitest/autorun"
require_relative "../raspberrypuree.rb"

class TestRaspberrypuree < Minitest::Test
	def setup
		@puree = Raspberrypuree.new({site_url:'https://github.com', text: ' here is a example from the user @kaichanvong about his user info of copied text '})
	end

	def test_markdown
		assert_equal('[@kaichanvong](https://github.com/kaichanvong)', @puree.markdown)
	end

	def test_uri
		assert_equal('https://github.com/kaichanvong', @puree.uri)
	end

	def test_username
		assert_equal('kaichanvong', @puree.username)
	end

	def test_firstname
		assert_equal('kai', @puree.nickname) # I mean there is CSS property and value: `text-transform: capitalize`;
	end

end
