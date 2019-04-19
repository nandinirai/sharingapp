require 'test_helper'

class AsstTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Asst.new.valid?
  end
end
