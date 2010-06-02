require 'test_helper'

class LeadTest < ActiveSupport::TestCase
  should "be valid" do
    assert Lead.new.valid?
  end
end
