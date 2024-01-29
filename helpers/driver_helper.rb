# frozen_string_literal: true
require 'yaml'
require 'appium_lib'

module DriverHelper
    def driver
      @driver ||= create_driver
  end

  private

  def create_driver
    @driver = Appium::Driver.new({ caps: caps })
  end

  # :reek:UtilityFunction
  def caps
    YAML.load_file('config/capabilities.yml')
  end
end
