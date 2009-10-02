require 'test_helper'

class VersionFuTest < ActiveSupport::TestCase
  test 'calculate integer standard deviation' do
    assert_equal 0.8, Measurement.std(:integer)
  end
end