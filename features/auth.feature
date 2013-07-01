Feature:
  Authorization 
  As mr. Wicked 

  @javascript
  Scenario: w/o login
  Given I open the startpage
  When I click 'countries'
  And I wait for the ajax request to finish
  Then I see more than '1' visited country

  Scenario: login
  Given I open the startpage
  Then I can enter:
  | passphrase | quick brown fox jumps over the lazy dog |
  When I click 'login'
  When I click 'login'
  Then I see 'successfuly'
