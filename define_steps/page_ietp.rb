class IETP_Page
	def initialize browser
		@browser=browser
	end
	def do_login user_name,password,project
		@browser.select_value_by_id 'project', project	
		@browser.type_by_id 'username', user_name
		@browser.type_by_id 'password', password
		capture_full_screen("IETP_Login_before")
		@browser.click_button_by_value 'Login'	
		capture_full_screen("IETP_Login_after")
	end
	
	def nav_to_visits
		@browser.click_link_by_text 'Visits'	
		capture_full_screen("IETP_VisitsTab")
	end
	
	def nav_to_workcard
		@browser.click_link_by_text 'Workcards'	
		capture_full_screen("IETP_WorkcardsTab")
	end
	
	def nav_to_publication
		@browser.click_link_by_text 'Publications'	
		capture_full_screen("IETP_PublicationsTab")
	end
	
	def nav_to_system
		@browser.click_link_by_text 'System'	
		capture_full_screen("IETP_SystemTab")
	end
	
	def nav_to_admin
		@browser.click_link_by_text 'Admin'	
		capture_full_screen("IETP_AdminTab")
	end
	
	def nav_to_preference
		@browser.click_link_by_text 'Preferences'	
		capture_full_screen("IETP_PreferencesTab")
	end
	
	def nav_to_manual
		@browser.click_link_by_text 'Manuals'
		capture_full_screen("IETP_ManualTab")
	end
	
	def do_logout
		@browser.click_link_by_text 'logout'
		capture_full_screen("IETP_Logout")
	end
	
	def close
		@browser.close
		capture_full_screen("IETP_before_close")
	end
	
	
end

