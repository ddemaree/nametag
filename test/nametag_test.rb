require 'test_helper'


class NametagTest < ActiveSupport::TestCase
  def setup
    @identifier = RecordIdentifier.new
  end
  
  context '#partial_path' do
    context "given a regular class" do
      should "return a modified partial_path" do
        pp = @identifier.partial_path( Apple )
        assert_equal "apples/apple", pp
      end
    end

    context "given a subclass" do
      should "return a partial path with both changed and unchanged components" do
        pp = @identifier.partial_path( Orange )
        assert_equal "apples/orange", pp
      end
    end
  end
  
  context '#dom_class' do
    context "given a subclass" do
      should "return the parent class's name" do
        dc = @identifier.dom_class( Orange )
        assert_equal "apple", dc
      end
    end
  end
  
end
