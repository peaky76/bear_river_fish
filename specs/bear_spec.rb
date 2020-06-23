require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestBear < MiniTest::Test

    def setup()
        @bear = Bear.new("Wojtek", "Brown Bear")
    end

    def test_has_name()
        assert_equal("Wojtek", @bear.name)
    end

    def test_has_type()
        assert_equal("Brown Bear", @bear.type)
    end
       
end