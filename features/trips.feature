
Feature: 
  Trips
  As mr.Smart

  Scenario: foo
  Given I open the startpage
  When I click 'trips'
  Then I see list of trips w/ dates
  And I see number of visited countires for each trip
  And I see total number of visited countires

  Scenario: foo
  Given I open the startpage
  When I click 'trips'
  And I wait for the ajax request to finish
  And I click button 'new-trip'
  Then I can enter:
  | date          | 06/26/2013 |
  | description   | Euruko2013 |
  And select 'Greece'
  When I click 'save'
  Then I see 'successfuly'
