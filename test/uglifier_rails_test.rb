require 'test_helper'

class UglifierRailsTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    @app ||= Rails.application
  end

  test "classes are loaded" do
    assert_kind_of Module, Uglifier::Rails
    assert_kind_of Class, Uglifier::Rails::Railtie
  end

  test "js compressor is set" do
    assert_equal :uglifier, Rails.application.config.assets.js_compressor
    assert_not_nil Rails.application.assets.js_compressor
  end

  test "js files are compressed" do
    get "/assets/test.js"

    assert_match "function test(){alert(\"Hello World\")}", last_response.body
  end
end
