# Chrome
#Capybara.default_driver = :selenium_chrome_headless
Capybara.default_driver = :selenium_chrome

# Firefox
# Capybara.default_driver = :selenium_headless

Capybara.run_server = false
Capybara.default_max_wait_time = 30

After do |scenario|
  take_screenshot(page, scenario)
  page.driver.browser.window_handles.each do |handle|
    page.driver.browser.switch_to.window(handle)
    page.execute_script "window.close()"
  end
end

def take_screenshot(page, scenario)
  time = Time.now.strftime("%Y-%m-%d %H:%M")
  scenario_name = scenario.name.gsub /[^\w\-]/, ' '
  if scenario.failed?
    screenshot_path = './screenshots/failed/' + time + ' - ' + scenario_name + '.png'
  else
    screenshot_path = './screenshots/success/' + time + ' - ' + scenario_name + '.png'
  end
  page.save_screenshot(screenshot_path)
end
