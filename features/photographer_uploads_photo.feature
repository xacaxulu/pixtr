Feature: Photographer upload pictures
  As a photographer,
  I can upload a picture into my gallery
  so that I can share them with the world.
  
  Background:
    Given a gallery exists with a title of "Vacation 2011"
    And a gallery exists with a title of "Vacation 2010"
    Given I signed up with "email@example.com"
    When I am on the homepage
    And I follow "Vacation 2011"
    And I follow "Upload Photo"
    When I fill in "Name" with "Honey Badger"
    And I attach the file "spec/fixtures/Honey_badger.jpg" to "Image"
    And I press "Upload Photo"
  
  Scenario: Photographer uploads a picture
    Then I should see the image for "Honey Badger" on the page
  @wip
  Scenario: View gallery of photos
    When I am on the homepage
    And I follow "Vacation 2011"
    And I follow "Honey Badger"
    Then I should see the image for "Honey Badger" on the page
  @wip
  Scenario: Only see a photo on attached to a gallery
    When I am on the homepage
    And I follow "Vacation 2010"
    And I should not see "Honey Badger"