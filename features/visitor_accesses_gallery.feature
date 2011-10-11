Feature: Visitor accesses gallery
  As a visitor,
  I cannot add galleries unless I authenticate
  
  Scenario: Visitor tries to create a gallery
    Given I am on the home page
    When I follow "Create Gallery"
    Then I should be on the home page
    And I should see "Visitors cannot create a gallery"
    
  Scenario: Visitor views galleries
    Given a gallery exists with a title of "Hawaii 2011"
    And a gallery exists with a title of "Alaska 2010"
    When I am on the homepage
    Then I should see a link to the "Hawaii 2011" gallery
    And I should see a link to the "Alaska 2010" gallery
    When I follow "Hawaii 2011"
    Then I should be on the gallery page for "Hawaii 2011"
    