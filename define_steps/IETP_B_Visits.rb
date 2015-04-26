require 'watir-classic'
require_relative 'watir_extension'
require_relative 'watir_helper'
require_relative 'ClickHelper'

include Watir_Helper

When /^I go to Visit tab\.$/ do
	@ietp_page.nav_to_visits
end

Then /^visit page appears\.$/ do
	@browser.text.include?("Create Visit").should == true
end

When /^I go to Workcard tab\.$/ do
	@ietp_page.nav_to_workcard
end

Then /^workcard page appears\.$/ do
	@browser.text.include?("Workcard bookmarks").should == true
end

When /^I go to Manuals tab\.$/ do
	@ietp_page.nav_to_manual
end

Then /^Manuals page appears\.$/ do
	@browser.text.include?("Dynamic wiring").should == true
end

When /^I go to Publications tab\.$/ do
	@ietp_page.nav_to_publication
end

Then /^Publications page appears\.$/ do
	@browser.text.include?("Publication module title").should == true
end

When /^I go to System tab\.$/ do
	@ietp_page.nav_to_system
end

Then /^System page appears\.$/ do
	@browser.text.include?("JVM Memory usage").should == true
end

When /^I go to Admin tab\.$/ do
	@ietp_page.nav_to_admin
end

Then /^Admin appears\.$/ do
	@browser.text.include?("Stylesheet mappings").should == true
end

When /^I go to Preferences tab\.$/ do
	@ietp_page.nav_to_preference
end

Then /^Preferences appears\.$/ do
	@browser.text.include?("Set print preferences").should == true
end

Then /^toggle none primary product attribute\.$/ do
	@ietp_page.nav_to_admin
	@ietp_page.cancel_primary_attribute 'model'
end

Then /^I go to check applicability\.$/ do
	@ietp_page.check_primary 'N/A'
end

When /^Set Applicability Dialog pop up\.$/ do
	@ietp_page.click_applic_table
end

Then /^there should be nothing in product attribute table\.$/ do
	@ietp_page.check_applic_table("model").should==false
end

Then /^toggle model as primary product attribute\.$/ do
	@ietp_page.nav_to_admin
	@ietp_page.toggle_primary_attribute 'model'
end

Then /^select "(.*?)" in product attribute table\.$/ do |model|
	@ietp_page.select_applic model
end

When /^I nav to repository\.$/ do 
	@ietp_page.nav_repo
end

Then /^I can see data module "(.*?)" in the list\.$/ do |dmc|
	@ietp_page.check_dm(dmc).should == true
end

When /^I choose data module "(.*?)" for HTML view\.$/ do |dmc|
	@ietp_page.preview_dm_html dmc
end

Then /^navigate to Manual->History\.$/ do
	@ietp_page.nav_to_manual_history
end

When /^reset the applic condition\.$/ do
	@ietp_page.reset_applic
end

Then /^I can not see data module "(.*?)" in the list\.$/ do |dmc|
	@ietp_page.check_dm(dmc).should == false
end

Then /^select no product applicability\.$/ do 
	@ietp_page.skip_select_applic
end

When /^I search data module by text "(.*?)"\.$/ do |keyword|
	@ietp_page.search_keyword keyword
end 

When /^I search data module by chapter "(.*?)"\.$/ do |chapter|
	@ietp_page.search_chapter chapter
end 

Then /^I can see "(.*?)" items\.$/ do |number|
	@ietp_page.check_result_number number
end

When /^I Browse modules tree "(.*?)","(.*?)","(.*?)","(.*?)","(.*?)"\.$/ do |level1,level2,level3,level4,level5|
	@ietp_page.expand "dc-"+level1+"_"
	@ietp_page.expand "dc-"+level1+"_"+level2+"_"
	@ietp_page.expand "dc-"+level1+"_"+level2+"_"+level3+"_"
	@ietp_page.expand "dc-"+level1+"_"+level2+"_"+level3+"_"+level4+"_"
	@ietp_page.expand "dc-"+level1+"_"+level2+"_"+level3+"_"+level4+"_"+level5+"_"
	@title=level1+"-"+level2+"-"+level3+"-"+level4+"-"+level5
end

Then /^I can find 12 data modules in list\.$/ do
	@ietp_page.check_result_text '12',@title
end

Then /^I create a visit\.$/ do
	@ietp_page.create_visit
end

When /^I open the visit "(.*?)"\.$/ do |visit|
	@ietp_page.nav_to_visits
	@ietp_page.search_all_visits
	@ietp_page.nav_visit visit 
	@ietp_page.open_visit
end

Then /^I delete the visit "(.*?)"\.$/ do |visit|
	@ietp_page.nav_to_visits
	@ietp_page.search_all_visits
	@ietp_page.nav_visit visit 
	@ietp_page.del_visit
end

Then /^I add unscheduled workcards "(.*?)"\.$/ do |workcard|
	@ietp_page.add_unscheduled_workcard workcard
end

Then /^I can see the workcard "(.*?)" in the visit\.$/ do |workcard|
	@ietp_page.search_workcard_in_visit(workcard).should ==true
end

Then /^I close the visit "(.*?)"\.$/ do |visit|
	@ietp_page.nav_to_visits
	@ietp_page.search_open_visits
	@ietp_page.nav_visit visit 
	@ietp_page.close_visit
end

When /^I search visit by station "(.*?)"\.$/ do |station|
	@ietp_page.nav_to_visits
	@ietp_page.search_visits_by_station station
end
   	
Then /^I can see the visit "(.*?)"\.$/ do |visit|
	@ietp_page.check_visit_in_search_result(visit).should==true
end

When /^I search visit by type "(.*?)"\.$/ do |type|
	@ietp_page.nav_to_visits
	@ietp_page.search_visits_by_type type
end

When /^I search visit by date\.$/ do 
	@ietp_page.nav_to_visits
	@ietp_page.search_visits_by_date
end

Then /^I can preview it in HTML format\.$/ do
	@ietp_page.preview_visit_in_html
end
   	
And /^I can preview it in PDF format\.$/ do
	@ietp_page.preview_visit_in_pdf
end