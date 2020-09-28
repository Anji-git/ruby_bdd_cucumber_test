# Cucumber BDD framework using Ruby

# Steps to take this code in your machine
 - Clone this project using: git clone https://github.com/sudo-anji-github/ruby_bdd_cucumber_test.git
# Prerequisite for this project
- ruby 2.7.1
# Scenario execution:
- Once cloning is done, we need to navigate "ruby_bdd_cucumber_test" folder in your local machine, then:
  # Install the below gems
  - gem install cucumber
  - gem install selenium-webdriver
  - gem install rspec
  - gem install pry (If your want to debug the code)
- Then run this command: cucumber feature_file_name.feature

   Example: ~/ruby_bdd_cucumber_test/cucumber web_ui_automation_test.feature 

- How to the scenarios using tags:

  cucumber feature_file_name.feature --tags=@tag_name
  
  Example: ~/ruby_bdd_cucumber_test/cucumber web_ui_automation_test.feature --tags=@test1