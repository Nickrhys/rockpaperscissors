Given(/^I am on the homepage$/) do
	visit '/' 
end

When(/^I click "(.*?)"$/) do |new_game|
  click_button(new_game)
end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

When(/^I press "(.*?)"$/) do |play|
	click_button(play)
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("Are you ready to play Stephen? Paper, Scissors, Stone: Make your choice... Paper Scissors Stone")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "Play!"
end

When(/^I choose Paper$/) do
  click_button("Paper")
end

Then(/^I should see "(.*?)"$/) do |results|
	results
end

Given(/^I have game results$/) do
	steps %Q{
		Given I've registered to play
		When I choose Paper
	}
end

Then(/^I should go back to ready to play$/) do
	expect(page.current_path).to eq '/play'
end