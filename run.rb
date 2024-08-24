require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'

  gem 'selenium-webdriver'
  gem 'webdrivers'
end

require 'selenium-webdriver'
require 'fileutils'

client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 120000 # seconds
driver = Selenium::WebDriver::Driver.for(:chrome, http_client: client)

driver.manage.timeouts.script_timeout = 6000000

def read_js_from_file(file_path)
  File.read(file_path)
end

def execute_script_and_reload(driver, js_code)
  begin
    driver.execute_script(js_code)
  rescue => e
    puts "Error: #{e.message}"
  end
end

# login
driver.navigate.to "https://rutracker.org/forum/login.php"
sleep(60)

driver.navigate.to "https://rutracker.org/forum/viewforum.php?f=1605&start=2450"

js_code = read_js_from_file('download_links.js')

# command = 'ls -al ~/Downloads/*.torrent | wc -l}'

(1..10).each_with_index do |i|
  puts "Page: #{i}"
  execute_script_and_reload(driver, js_code)
end
