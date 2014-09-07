When(/^I click "(.*?)"$/) do |new_game|
  click_link new_game

end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("Are you ready to play Stephen? Rock, Paper, Scissors: Make your choice... Paper Rock Scissors")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "Play!"
end

When(/^I choose Paper$/) do
  click_button("Paper")
end

Given(/^I have finished a game$/) do
	outcome
end

Then(/^I should go back to ready to play$/) do
  pending # express the regexp above with the code you wish you had
end