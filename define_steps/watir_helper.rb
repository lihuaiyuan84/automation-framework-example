module Watir_Helper
  def goto_url(url)
    browser=Watir::IE.new
    browser.bring_to_front
    browser.maximize
    browser.goto(url)
    browser
  end
		
  def capture_full_screen(pictureName)
	timestr=Time.now.to_s
	timestr=timestr.lstrip
	timestr=timestr.gsub(/([^0-9])/,'')
	Win32::Screenshot::Take.of(:desktop).write("#{pictureName}_#{timestr}.jpg")
  end
	
  def generate_timestamp
  	timestr=Time.now.to_s
  	timestr=timestr.lstrip
  	timestr=timestr.gsub(/([^0-9])/,'')
  end
  def overflow index, num
	if index > num
		p 'Loop time overflow'
		true
	else
		false	
	end
  end
  def search_data_by_index condition, index
	i = 0
	while "#{$DATA[i.to_i][index]}" != condition || $DATA[i.to_i][13] != ""
		i+=1
		if overflow(i,UPPER_BOUND)
			return false
		end
	end
	i	
  end
  def search_brex_by_index condition
	i = 0
	while "#{$DATA[i][0]}" != condition do
		i+=1
		if overflow(i,UPPER_BOUND)
			return false
		end		
	end
	i
  end
end

class MainPage
	include Watir_Helper
	def initialize browser 
		@browser = browser
	end
	
	#This method can judge if a pipeline is running.  
	#It judge by check the icon before each process. 
	def framework_page_pipeline_stop?
		#You can input all types of active icon in the array 
		active_status=[]
		result=false
		active_status << "Process is Running." 
		active_status << "Process is Initialized and will run shortly." 
		active_status << "Process is Waiting for other processes to complete."
		active_status << "Process has Completed."
		active_status << "Process is Waiting for other processes to complete."
		active_status.each{|x| result ||= @browser.check_img_by_alt(x) }
		return !result
	end
	

	
end