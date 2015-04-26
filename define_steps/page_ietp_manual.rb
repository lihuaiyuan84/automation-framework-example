require_relative 'page_ietp'

class IETP_Page
	
	def skip_act
		if @browser.button_exist?('No product applicability')		#(:value,'No product applicability').exist? == true
			@browser.click_button_by_value 'No product applicability'
		end
	end

	def check_primary value
		@browser.get_hidden_value_by_id('ppia').should == value
	end

	def nav_to_manual_pub_navigation
		@browser.click_link_by_text 'Pub navigation'
	end
	
	def nav_to_repository_navigation
		@browser.click_link_by_text 'Repository navigation'
	end
	
	def nav_to_search
		@browser.click_link_by_text 'Search'
	end
	
	def select_pmc_in_dropdown_list pmc
		@browser.select_value_by_id 'pmDropDownList',pmc
	end
	def expand_node
		@browser.click_span_by_xpath XPATH_PUB_NAV_ROOT_NODE
	end
	def fold_node
		@browser.click_span_by_xpath XPATH_PUB_NAV_ROOT_NODE
	end
	
	def advanced_search
		@browser.click_link_by_text 'Advanced Search'
	end
	
	def clear_search_criteria
		@browser.click_link_by_text 'Clear form'
	end
	
	def set_criteria
		@browser.type_by_name 'fts_keywords', 'test clear form link button'
	end
	
	def preview_datamodule dmc
	    @browser.click_link_by_xpath("//div[@id=\"contentContentPane\"]//table//tr[td=\"#{dmc}\"]/td/a")
	end
	
	def click_applic_table
		@browser.click_link_by_href IETP_MANUAL_TAB_APPLIC_TABLE_HREF
	end

	def check_applic_table value
		popw=Watir::IE.attach(:title,/Product lookup/)
		result=popw.text.include? value
		popw.frame(:name,'bottomFrame').button(:value,'Cancel').click
		result
	end

	def select_applic applic
		@browser.type_by_id 'ppiav',applic
		@browser.click_button_by_value 'Set'
	end

	def nav_repo
		@browser.click_link_by_text 'Repository navigation'
	end
	def check_dm dmc
		@browser.text.include? dmc
	end
	def nav_to_manual_history
		@browser.click_link_by_text 'History'
	end
	def preview_dm_html dmc
		@browser.div(:id=>'contentDiv').table(:id=>/r-/).tbody.tr(:id,"rowDMC_"+dmc.gsub(/-/,"_")).link(:index=>0).click
		sleep 2
		popw=Watir::IE.attach(:title,/S1000D/)
		capture_full_screen("IETP_HTML_PREVIEW")
		popw.close
		sleep 2
	end
	def reset_applic
		@browser.click_link_by_text 'Reset'
	end
	def skip_select_applic
		@browser.click_button_by_value 'No product applicability'
	end
	def search_keyword keyword 
		@browser.click_link_by_text "Search"
		@browser.type_by_name "fts_keywords",keyword
		@browser.click_button_by_value "Submit"
	end

	def search_chapter chapter 
		@browser.click_link_by_text "Search"
		@browser.type_by_name "systemValueParam",chapter
		@browser.click_button_by_value "Submit"
	end
	def check_result_number number
		@browser.h1.text.should == "Search - Results : "+number
	end
	def expand para
		@browser.div(:id=>para).link(:index,0).click
	end

	def check_result_text number,location
		@browser.div(:id=>"content").h1.text.should == "Repository navigation #{location}: #{number}"
	end
end
