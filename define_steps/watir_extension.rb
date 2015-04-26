require 'watir-classic'
module Watir
=begin	
		module Exception
		class WatirException
		
			def initialize(message="")
				super(message)
				if @@ie_id
					#@@ie_id.quit
				end
			end
			def self.get_ie ie_id
				@@ie_id=ie_id
			end
			
		end
	end

	class Browser
			def _new_process_init
				iep = Process.start
				@ie = iep.window
				Exception::WatirException.get_ie(@ie)
				@process_id = iep.process_id
				initialize_options
				goto 'about:blank'
			end
			def create_browser_window
				@ie = WIN32OLE.new('InternetExplorer.Application')
				Exception::WatirException.get_ie(@ie)
			end
	end
=end	
	class IE

		def type_by_id id,content
			text_field(:id,id).set content
			wait
		end
		def type_by_name name,content
			text_field(:name,name).set content
			wait
		end
		def type_by_index index,content
			text_field(:index,index).set content
			wait
		end
		
		def type_by_xpath xpath_string,content
			text_field(:xpath,xpath_string).set content
		end
		def click_button_by_value value
			button(:value,value).click
			wait
		end
		def click_button_by_id id
			button(:id,id).click
			wait
		end
		def click_div_by_id id
			div(:id,id).click
		end

		def click_checkbox_by_id id
			checkbox(:id, id).click
			wait
		end
		def clear_checkbox_by_id id
			checkbox(:id, id).clear 
			wait
		end
		def set_checkbox_by_id id
			checkbox(:id, id).set 
			wait
		end
		def click_button_by_index index
			button(:index,index).click
			wait
		end
		def select_checkbox_by_value value
			checkbox(:value,value).when_present.set true
		end
		def disable_checkbox_by_value value
			checkbox(:value,value).when_present.set false
		end
		def enable_checkbox_by_value value
			checkbox(:value,value).when_present.set true
		end
		def get_checkbox_id value
			checkbox(:value,value).when_present.id
		end
		def select_value_by_id id,value
			select_list(:id,id).select_value value
			wait
		end
		def select_by_id id,text
			select_list(:id,id).select text
			wait
		end

		def select_value_by_index index,value
			select_list(:index,index).when_present.select_value value
		end
		def select_item_by_index num, value
			if value != "" 
				select_list(:index,num).when_present.select(value)
			end
		end
		def select_item_by_xpath xpath, value
			if value != "" 
				select_list(:xpath,xpath).when_present.select(value)
			end
		end
		def select_value_by_xpath xpath,value
			if value != ""
				select_list(:xpath,xpath).when_present.select_value(value)
			end
		end
		def select_value_by_text name,value
			#name is the selct option name, value is the item you want to selected
			if value != ""
				select_list(:name, name).select(value)
			end
		end
		def click_link_by_text text
			link(:text,text).click
			wait
		end
		def click_link_by_id id
			link(:id,text).click
			wait
		end
		def click_link_by_href href
			link(:href,href).click
			wait
		end
		def click_link_by_text_no_wait text
			link(:text,text).click_no_wait
		end
	
		def click_link_by_xpath xpath
			link(:xpath,xpath).click
			wait
		end
		def click_link_by_xpath_no_wait xpath
			link(:xpath,xpath).click_no_wait
		end
		def click_span_by_xpath xpath
			span(:xpath,xpath).click
			wait
		end
		def click_radio_by_index index
			radio(:index,index).set
			wait
		end
		def set_radio_by_value value
			radio(:value,value).when_present.click
		end
		def set_radio_by_index num
			radio(:index,num).when_present.click
		end
		def button_exist? value
			button(:value,value).exist?
		end
		def link_exist? text
			link(:text,text).exist?
		end	
		def textfield_exist_by_index? index
			text_field(:index,index).exist?
		end	
		def textfield_set_value_by_name name,value
			#name is the text_field name, value is you want to set for the text field
			text_field(:name,name).set(value) 
		end	
		def upload_file path
			file_field(:index,0).set path
			wait
		end
		def wait_for_link value
			link(:text,value).exist?
		end
		def type_file_field_by_index num,path
			file_field(:index,num).set(path)
		end
		def get_text_by_xpath xpath
			element(:xpath,xpath).text
		end
		def get_xpath_by_text text
			element(:text,text).xpath
		end
		
		def get_textfield_text_by_id id
			text_field(:id=>id).text
		end

		def wait_for_text sec,string
			wait_until(sec){self.text.include?(string)}
		end
		def set_hidden_by_id id,value
			hidden(:id,id).set value
		end
		def get_hidden_value_by_id id
			hidden(:id,id).value
		end
		def check_img_by_alt alt
			image(:alt,alt).exist?
		end
		def click_img_by_title title
			image(:title,title).click
		end
		
		
	end
	
	class FileField < InputElement
		def set(file_path)
			assert_file_exists(file_path)
			assert_exists
			left_click_2
			sleep 5
			set_file_name file_path.gsub(File::SEPARATOR, File::ALT_SEPARATOR)
			open_button.click
			Wait.until(5) {value.include?(File.basename(file_path))}
		end
		
		
	end

end
  