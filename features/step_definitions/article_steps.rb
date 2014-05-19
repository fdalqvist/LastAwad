Given /^I am in "([^\"]*)"$/ do |directory|
#File.chdir(directory)
@basedir = directory
end
 
And /^the file "([^\"]*)" exists$/ do |filename|
File.exists?(File.join(@basedir, filename)).should be_true
end

And /^I am on the "([^\"]*)" page$/ do |urlname|
	visit urlname
end

And /^is in box "([^\"]*)"$/ do |testo|
	fill_in('findme', :with => 'Test')
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_css("#home", :text => text)
end

When /^I click "([^"]*)"$/ do |button|
  find_link(button).visible?
end

When /^I clIck "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I will see "([^"]*)"$/ do |text|
  page.should have_css("#country", :text => text)
end

Then /^I may see "([^"]*)"$/ do |text|
	page.should have_css("#3hour", :text => text)
end

Then /^I shall see "([^"]*)"$/ do |text|
	page.should have_css("#metoffice", :text => text)
end

And /^there is a "([^"]*)"$/ do |test|
	page.should have_xpath("//div[contains(@id, \"#{test}\")]")
end

Then /^I see the twitter feed$/ do
  page.should have_content 'Tweets by'
 end

Then /^I see the "([^"]*)"$/ do |one|
   page.should have_xpath("//div[contains(@id, \"#{one}\")]")
end

Then /^I should see the map "(.+)"$/ do |map|
    page.should have_xpath("//img[@src=\"/public/images/#{image}\"]")
end


And /^I visit the "([^\"]*)" page$/ do |urlname|
	visit urlname
end

Then /^I can see the data displayed$/ do 
	assert page.has_content? 'Location'
end


Then /^I can scroll through a "([^"]*)"$/ do |two|
	page.should have_xpath("//div[contains(@id, \"#{two}\")]")
end


And /^the input is "Angola"$/ do 
	fill_in 'key', with: "Angola" 
end

When /^I press search$/ do
	click_button("Search by Country")
end

Then /^the output is all entries for that country$/ do 
	assert page.has_content? 'Angola'
end

Then /^I see the linkbar$/ do
	assert page.has_content? 'Eurovision'
end

Then /^I see the text box$/ do
 assert page.has_content? 'Cabernet'
end

Then /^I see team info$/ do 
	assert page.has_content? 'The Pun'
end

Then /^I see names$/ do
	assert page.has_content? 'Fredric'
end

Then /^I see pictures of the team members$/ do
	page.should have_xpath("//img[@src=\"/assets/Fredric.jpg\"]")
end

Then /^I can see the message box displayed$/ do
	assert page.has_content? 'Message'
end

Then /^I can edit the boxes$/ do
	fill_in 'message', with: "I love you guys"
end

And /^I press cancel$/ do
	click_button("cancel")
end

Then /^I will be diverted to the Home page$/ do
	visit "/main"
end