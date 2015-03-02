require_relative 'helper'

module CronForGithub
  module App
    class TestApp < Test::Unit::TestCase
      test 'version' do
        assert do
          !::CronForGithub::App::VERSION.nil?
        end
      end
    end
  end
end
