Feature: 
  As mr.Smart

  Scenario: Check out currencies and quest status
  Given I open the startpage
  When I click 'currencies'
  And I wait for the ajax request to finish
  Then I see more than '3' currencies
  And I can click any currency
  And I see visited countries
  And I see number of countries for each currency
  And I see total number non visited countries
  And I can filter out visited countries currencies
