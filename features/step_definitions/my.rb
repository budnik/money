Given(/^I open the startpage$/) do
  visit root_path
end

When /^I wait for the ajax request to finish$/ do
  start_time = Time.now
  page.evaluate_script('jQuery.isReady&&jQuery.active==0').class.should_not eql(String) until page.evaluate_script('jQuery.isReady&&jQuery.active==0') or (start_time + 5.seconds) < Time.now do
    sleep 1
  end
end

When(/^I click '([^']+)'$/) do |caption|
  first(:link, caption).click
end

When(/^I click button '([^']+)'$/) do |caption|
  click_button caption
end

Then(/^I can click any currency$/) do
  Capybara.match = :first
  find('tr.currency').click # express the regexp above with the code you wish you had
end

Then(/^I see visited countries$/) do
  page.should have_css('.countries>p>.label')
end

Then(/^I see number of countries for each currency$/) do
  page.should_not have_css('.label.nof_visited_countries:empty')
end
Then(/^I see total number non visited countries$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can filter out visited countries currencies$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I see list of currencies$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click 'first' currency$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see more than '(\d+)' visited countr\w+$/) do |n|
  all('li.visited-country').size.should be > n.to_i # express the regexp above with the code you wish you had
end

Then(/^I see more than '(\d+)' currenc\w+$/) do |n|
  all('tr.currency').size.should be > n.to_i # express the regexp above with the code you wish you had
end

When(/^I click login button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can enter:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end


Then(/^I see 'successfuly'$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see list of trips w\/ dates$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see number of visited countires for each trip$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see total number of visited countires$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^select 'Greece'$/) do
  pending # express the regexp above with the code you wish you had
end
