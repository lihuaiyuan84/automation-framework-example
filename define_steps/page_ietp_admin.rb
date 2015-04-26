require_relative 'page_ietp'

class IETP_Page
	def conf_fail_on_missing_mmo_res
		@browser.click_link_by_text 'Data modules - fail on missing MMO resource'
		@browser.click_radio_by_index 1
		@browser.click_button_by_index 0
	end
	def conf_fail_on_missing_link
		@browser.click_link_by_text 'Data modules - fail on missing link target'
		@browser.click_radio_by_index 1
		@browser.click_button_by_index 0
	end
	def conf_feedback_url url
		@browser.click_link_by_text 'S1000D Feedback form URL'
		@browser.type_by_name 'value',url
		@browser.click_button_by_index 0
	end
	def upload_ddn	path
		@browser.click_link_by_text 'Import DDN'
		sleep 2
		@browser.upload_file path
		wait_for_upload path
		capture_full_screen("IETP_AdminTab_BeforeSubmit")
		@browser.click_button_by_value 'Submit'
		capture_full_screen("IETP_AdminTab_AfterSubmit")
	end

	def cancel_primary_attribute value
		@browser.click_link_by_text 'S1000D Primary product identifier attributes'
		@browser.disable_checkbox_by_value value
		sleep 2
		capture_full_screen("IETP_AdminTab_PrimarySet")
		@browser.click_button_by_value 'OK'
	end
	
	def toggle_primary_attribute value
		@browser.click_link_by_text 'S1000D Primary product identifier attributes'
		@browser.enable_checkbox_by_value value
		sleep 2
		capture_full_screen("IETP_AdminTab_PrimarySet")
		@browser.click_button_by_value 'OK'
		
	end
	
	def set_applicability
		@browser.click_link_by_text 'Set applicability'
	end
	
	def confirm_applic
		@browser.click_button_by_value 'Set'
	end

	

	def wait_for_upload path
		n=0
		wait_time= 30
		while @browser.file_field(:index,0).value == "" 
			n.should_not == wait_time
			sleep 2
			n+=1
		end
	end
	def wait_for_text text
		n=0
		wait_time= 60
		while @browser.text.include?(text) == false
			n.should_not==wait_time
			sleep 2
			n+=1
		end		
		
	end
	
end