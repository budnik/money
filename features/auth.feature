
Feature:
  Authorization 
  As mr. Wicked 

  Scenario: w/o login
  Given I open the startpage
  Then I see list of visited countries

  Scenario: login
  Given I open the startpage
  When I click login button
  Then I can enter:
  | passphrase | quick brown fox jumps over the lazy dog |
  When I click 'login'
  When I click 'login'
  Then I see 'successfuly'
