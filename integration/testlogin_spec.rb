# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Testlogin' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'testlogin' do
    @driver.get('http://localhost:3000/')
    @driver.find_element(:css, '.button_to:nth-child(1) > .btn').click
    @driver.find_element(:id, 'user_email').send_keys('user5@user.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('12345')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('use@user.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('user5@user.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:css, '.btn-close').click
    @driver.find_element(:link_text, 'Новости').click
    @driver.find_element(:link_text, 'BEAST Hack').click
    @driver.find_element(:link_text, 'Новости').click
    @driver.find_element(:link_text, 'Команда').click
    @driver.find_element(:link_text, 'Личный кабинет').click
    @driver.find_element(:id, 'navbarSupportedContent').click
    @driver.find_element(:css, '.btn-outline-light').click
    @driver.find_element(:css, '.btn-close').click
  end
end
