Feature: Merge Articles
  As a blog administrator
  In order to organice articles
  I want to be create, edit and delete categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following categories exist:
    | id  | name                    | description                                |
    | 10  | Categorie 0             | This is the description of the categorie 0 |

  Scenario: Successfully create categorie 
    Given I am on the admin content page
    And I follow "Categories"
    And I fill in "Name" with "Categorie 1"
    And I fill in "Description" with "This is the description of the categorie 1"
    When I press "Save"
    Then I should see "Categorie 0"
    And I should see "Categorie 1"


  Scenario: Successfully Edit categorie
    Given I am on the admin content page
    And I follow "Categories"
    And I follow "Categorie 0"
    And I fill in "Name" with "Categorie 2"
    And I fill in "Description" with "This is the description of the categorie 2"
    When I press "Save"
    Then I should see "Categorie 2"
    And I should not see "Categorie 0"