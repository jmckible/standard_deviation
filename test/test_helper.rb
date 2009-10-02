require 'test/unit'
require 'rubygems'
require File.expand_path(File.join(File.dirname(__FILE__), '../../../../config/environment.rb'))

require 'active_record'
require 'active_record/fixtures'

#require File.expand_path(File.join(File.dirname(__FILE__), '../init.rb'))

config = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))
ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + '/debug.log')
ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations['test'])

load(File.dirname(__FILE__) + '/schema.rb')

require File.join(File.dirname(__FILE__), 'fixtures/measurement')

class ActiveSupport::TestCase
  include ActiveRecord::TestFixtures

  self.fixture_path = File.dirname(__FILE__) + '/fixtures/'

  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false

  fixtures :all
end
