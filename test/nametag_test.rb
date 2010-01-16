require 'test_helper'
require 'fixtures/heffalump'

class NametagTest < ActiveSupport::TestCase
  
  context "The Heffalump class" do
    should "return a modified partial_path" do
      assert_equal "woozles/woozle", Heffalump.model_name.partial_path
    end
  end
  
end
