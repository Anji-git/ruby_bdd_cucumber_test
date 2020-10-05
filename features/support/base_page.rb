# encoding: utf-8

class Page

  def initialize(driver)
    @driver = driver
  end

  def openSite (site)
    @driver.get site
  end

  def login_data(usr_name, pwd)
    user_name = findElementBy("id", "user-name")
    user_name.send_keys usr_name
    user_pwd = findElementBy("id", "password")
    user_pwd.send_keys pwd
    login_btn = findElementBy("id", "login-button")
    login_btn.click
  end

  def findElementBy (type, value)
    if type=="class"
      element=@driver.find_element :class => value
    elsif type=="css"
      element=@driver.find_element :css => value
    elsif type=="id"
      element=@driver.find_element :id => value
    elsif type=="link"
      element=@driver.find_element :link => value
    elsif type=="name"
      element=@driver.find_element :name => value
    elsif type=="partial_link"
      element=@driver.find_element :partial_link_text => value
    elsif type=="tag"
      element=@driver.find_element :tag_name => value
    elsif type=="xpath"
      element=@driver.find_element :xpath => value
    else
      p "incorrect selector type"
    end
  end

  def wait_for_page_load
    sleep(5)
  end

end

