$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../define_steps')

require 'cucumber'
require 'ClickHelper'
require 'watir_extension'
require 'watir_helper'
require 'win32/screenshot'
require 'configurations'
require 'IETP_A_Login.rb'
require 'IETP_G_Initialize.rb'
require 'page_ietp.rb'
require 'page_ietp_admin.rb'
require 'page_ietp_manual.rb'