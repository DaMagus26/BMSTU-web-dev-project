# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Testregistration' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'testregistration' do
    @driver.get('http://localhost:3000/')
    @driver.manage.resize_to(882, 697)
    @driver.find_element(:css, '.button_to:nth-child(2) > .btn').click
    @driver.find_element(:id, 'user_email').send_keys('user5@user.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('user5.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:id, 'user_password_confirmation').click
    @driver.find_element(:id, 'user_password_confirmation').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('user5@user.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('1234566')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:id, 'user_password_confirmation').click
    @driver.find_element(:id, 'user_password_confirmation').send_keys('123456')
    @driver.find_element(:name, 'commit').click
  end
end
