require_relative 'page_ietp'

class IETP_Page
	
	def create_visit
		@browser.click_link_by_text 'Create Visit'
		@browser.type_by_id 'visit_type','RON'
		@browser.type_by_id "carrier_code",'FS'
		@browser.type_by_id 'airplane_tail','3301'
		@browser.type_by_id "station_code","AMA"
		@browser.type_by_id 'track','00'
		@browser.type_by_id 'visit_desc','test4visit'
		@browser.type_by_id 'days_out_svc','30'
		@browser.type_by_id 'pkg_id','123456'
		@browser.type_by_id 'wc_num','2560-2001'
		@browser.type_by_id 'forecast_num','63-0515-8-0001'
		

		@browser.dl(:id=>"scheduled_date_anchor").link.click
		sleep 2
		popw1=Watir::IE.attach(:title,/Calendar/)
		popw1.click_link_by_text 'Today'

		@browser.dl(:id=>"scheduled_date_b4_anchor").link.click
		sleep 2
		popw2=Watir::IE.attach(:title,/Calendar/)
		popw2.click_link_by_text 'Today'

		sched_date=@browser.get_textfield_text_by_id "sched_date"
		@browser.type_by_id "sched_time",sched_date
		
		@browser.div(:text=>"At least one value is required for this set of fields").parent.link.click
		sleep 2
		popw3=Watir::IE.attach(:title,/Check/)
		popw3.frame(:name=>"topFrame").div(:id=>"dojox_grid__View_1").table.click
		popw3.frame(:name=>"bottomFrame").button(:value=>"Select").click
		sleep 2

		capture_full_screen("IETP_VISIT_CREATE")
		@browser.click_button_by_value 'Add'
		sleep 2
	end
	def search_all_visits
		@browser.click_link_by_text "Search visits"
		@browser.click_button_by_value "Submit"
	end
	def nav_visit visit
		@browser.click_link_by_text visit
	end
	def open_visit
		sleep 2
		@browser.image(:title,"Status").parent.click
		sleep 2
		@browser.image(:title,"Open visit").parent.click
		capture_full_screen("IETP_VISIT_OPEN")
		sleep 30
	end
	def search_open_visits
		@browser.click_link_by_text "Search visits"
		@browser.select_by_id "status","Open"
		@browser.click_button_by_value "Submit"
	end

	def del_visit
		sleep 2
		@browser.image(:title,"Admin").parent.click
		sleep 2
		@browser.image(:title,"Delete visit").parent.click_no_wait
		sleep 2
		@browser.alert.ok
	end

	def add_unscheduled_workcard wc
		@browser.image(:title,"Unscheduled workcards").parent.click
		sleep 2
		@browser.image(:title,"Add unscheduled workcards").parent.click
		sleep 2
		@browser.click_button_by_value "Submit"
		@browser.checkbox.parent.label.text.should == wc
		capture_full_screen("IETP_VISIT_PREPARE_ADD_WC")
		@browser.checkbox.when_present.set true
		@browser.click_button_by_value "Add selected workcards as an unscheduled workcard"
	end
	def search_workcard_in_visit wc
		@browser.click_link_by_text "Search workcards"
		@browser.type_by_id "wc_num",wc
		@browser.click_button_by_value "Submit"
		capture_full_screen("IETP_VISIT_WORKCARD_SEARCH_RESULT")
		@browser.text.include? "Results: 1"		
	end

	def close_visit
		sleep 2
		@browser.image(:title,"Status").parent.click
		sleep 2
		@browser.image(:title,"Close visit").parent.click
	end

	def search_visits_by_type type
		@browser.type_by_id "type",type
		@browser.click_button_by_value "Submit"
	end

	def search_visits_by_station station
		@browser.type_by_id "station",station
		@browser.click_button_by_value "Submit"
	end

	def check_visit_in_search_result visit
		capture_full_screen("IETP_VISIT_SEARCH_RESULT")
		@browser.link(:text=>visit).exist?
	end

	def search_visits_by_date
		@browser.text_field(:id=>"scheduled_date").parent.link.click
		popw=Watir::IE.attach(:title,/Calendar/)
		popw.click_link_by_text 'Today'
		@browser.click_button_by_value "Submit"
	end
	def preview_visit_in_html
		@browser.image(:title,"HTML reports").parent.click
		sleep 2
		@browser.image(:title,"Tally").parent.click
		sleep 10
		popw=Watir::IE.attach(:title,/HTML Tally/)
		capture_full_screen("IETP_VISIT_HTML_PREVIEW")
		popw.close
	end
	def preview_visit_in_pdf
		@browser.image(:title,"PDF preview reports").parent.click
		sleep 2
		@browser.image(:title,"Tally").parent.click
		sleep 20
		popw=Watir::IE.attach(:title,/PDF Tally/)
		capture_full_screen("IETP_VISIT_PDF_PREVIEW")
		popw.close
	end
end
