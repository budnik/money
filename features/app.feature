Feature: 
  As mr.Smart

  Scenario: foo
  Given I open the startpage
  When I click 'currencies'
  Then I see list of currencies
  And I can click any currency
  And I see number of countries for each currency
  And I see total number non visited countries
  And I can filter out visited countries currencies

  @wip
  Scenario: foo
  Given I see list of currencies
  When I click 'first' currency
  Then I see list of countries