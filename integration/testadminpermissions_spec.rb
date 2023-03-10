# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Testadminpermissions' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'testadminpermissions' do
    @driver.get('http://localhost:3000/')
    @driver.manage.resize_to(882, 697)
    @driver.find_element(:css, '.button_to:nth-child(1) > .btn').click
    @driver.find_element(:id, 'user_email').send_keys('meme@meme.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').click
    element = @driver.find_element(:id, 'user_password')
    @driver.action.double_click(element).perform
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:css, '.btn-close').click
    @driver.find_element(:link_text, 'Управление').click
    @driver.find_element(:link_text, 'Посты').click
    @driver.find_element(:id, 'post_postHeader').click
    @driver.find_element(:id, 'post_postHeader').send_keys('New post')
    @driver.find_element(:id, 'post_postContent').click
    @driver.find_element(:id, 'post_postContent').send_keys('<b>Some important post</b>. Apparently it is possible to use <em>HTML</em> markup to design posts')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:link_text, 'Новости').click
    @driver.find_element(:link_text, 'Управление').click
    @driver.find_element(:link_text, 'Управление').click
    @driver.find_element(:link_text, 'Управление').click
    @driver.find_element(:link_text, 'Посты').click
    @driver.find_element(:css, 'tr:nth-child(5) .btn').click
    @driver.find_element(:link_text, 'Управление').click
    @driver.find_element(:link_text, 'Команды').click
    @driver.find_element(:css, '.btn').click
    @driver.find_element(:css, '.btn-close').click
  end
end
