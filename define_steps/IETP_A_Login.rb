require 'watir-classic'
require_relative 'watir_extension'
require_relative 'watir_helper'
require_relative 'ClickHelper'

include Watir_Helper
Given /^that launching IETP Homepage with IE browser\.$/ do
	@browser=goto_url IETP_URL
	@ietp_page=IETP_Page.new(@browser)
end


When /^user login with "(.*?)" "(.*?)" "(.*?)"\.$/ do |user, password, project|
	@ietp_page.do_login user, password, project
	@user=user
	@project=project
end

Then /^I hope login "(.*?)"\.$/ do |result|
	case result 
		when "succeed" then
			@browser.text.include?("Please enter a value").should == false  
		when "fail" then
			@browser.text.include?("Please enter a value").should == true
	end
end

Then /^main page shows\.$/ do
	@browser.text.include?('Use * for multi character and ? for single character wildcard.').should == true
end


Then /^close browser\.$/ do
	@ietp_page.close
end
