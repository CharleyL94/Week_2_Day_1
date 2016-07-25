require('minitest/autorun')
require('minitest/rg')
require_relative('./enigine.rb')

class TestEngine < MiniTest::Test

def setup()
@turbo_engine = Engine.new(25, 10)
@jet_engine = Engine.new(100, 100)
end





end