require "minitest/autorun"
require_relative "../raspberrypuree.rb"

class TestRaspberrypuree < Minitest::Test
	def setup
		params = { site_url:'https://github.com', 
			   text: 'here is a example from the user @kaicvong about his user info of copied text' }
		@puree = Raspberrypuree.new(params)
	end

	def test_markdown
		assert_equal('[@kaicvong](https://github.com/kaicvong)', @puree.markdown)
	end

	def test_uri
		assert_equal('https://github.com/kaicvong', @puree.uri)
	end

	def test_username
		assert_equal('kaicvong', @puree.username)
	end

	def test_firstname
		assert_equal('kai', @puree.nickname) # I mean there is CSS property and value: `text-transform: capitalize`;
	end
end
