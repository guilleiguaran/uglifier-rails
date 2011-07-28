require 'test_helper'

class UglifierRailsTest < ActiveSupport::TestCase
  test "classes are loaded" do
    assert_kind_of Module, Uglifier::Rails
    assert_kind_of Class, Uglifier::Rails::Railtie
  end

  test "js compressor is set" do
    assert_kind_of Uglifier, Dummy::Application.config.assets.js_compressor
  end
end
