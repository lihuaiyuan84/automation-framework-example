require 'watir-classic'
require_relative 'watir_extension'
require_relative 'watir_helper'
require_relative 'ClickHelper'

include Watir_Helper



Then /^do initialization for "(.*?)"\.$/ do |project|
	@browser.link(:text,"Admin").click
	@browser.link(:text,"Data modules - fail on missing MMO resource").click
	@browser.radio(:value,"false").click
	@browser.button(:value,"OK").click	
end

