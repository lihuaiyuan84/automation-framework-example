require 'watir-classic'
require_relative 'watir_extension'
require_relative 'watir_helper'
require_relative 'ClickHelper'

include Watir_Helper

Given /^that IETP Admin tab\.$/ do
	@browser=goto_url IETP_URL
	@ietp_page=IETP_Page.new(@browser)
	@manual_page=IETP_Manual_Page.new(@browser)
	@admin_page=IETP_Admin_Page.new(@browser)
	@ietp_page.do_login ADMIN_USER, ADMIN_PASSWORD, ISSUE_4_PROJECT
	@ietp_page.nav_to_admin
end

When /^I select a DDN manual and upload\.$/ do
	@admin_page.upload_ddn DDN_DATA
end

Then /^I hope it would be imported successfully\.$/ do
	@admin_page.wait_for_text BIKE_BREX
end