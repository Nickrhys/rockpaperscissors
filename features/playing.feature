Feature: Playing
	In order to play stone Paper Scissors
	As a player
	I need to get two players

Scenario: A player can register
	Given I am on the homepage
	When I click "CLICK HERE TO PLAY"
	And I enter my name
	When I press "Play!"
	Then I should be ready to play

Scenario: A player is playing
	Given I've registered to play
	When I choose Paper
	Then I should see "RESULTS"

Scenario: Starting a new game
	Given I have game results
	When I click "Play Again?"
	Then I should go back to ready to play