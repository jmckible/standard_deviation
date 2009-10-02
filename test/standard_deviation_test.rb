require 'test_helper'

class VersionFuTest < ActiveSupport::TestCase
  
  test 'calculate standard deviation' do
    assert_in_delta 0.8165, Measurement.std(:integer), 0.0001
    assert_in_delta 0.8165, Measurement.std(:decimal), 0.0001
  end
  
  test 'calculate variance' do
    assert_in_delta 0.6667, Measurement.variance(:integer), 0.001
    assert_in_delta 0.6667, Measurement.variance(:decimal), 0.001 
  end
  
  test 'count works normally' do
    assert_equal 3, Measurement.count
    assert_equal 3, Measurement.count
  end
  
  test 'average works normally' do
    assert_equal 2, Measurement.average(:integer)
    assert_equal 2, Measurement.average(:decimal)
  end
  
  test 'minimum works normally' do
    assert_equal 1, Measurement.minimum(:integer)
    assert_equal 1, Measurement.minimum(:decimal)
  end
  
  test 'maximum works normally' do
    assert_equal 3, Measurement.maximum(:integer)
    assert_equal 3, Measurement.maximum(:decimal)
  end
  
  test 'sum works normally' do
    assert_equal 6, Measurement.sum(:integer)
    assert_equal 6, Measurement.sum(:decimal)
  end
  
end