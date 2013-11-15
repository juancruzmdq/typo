Feature: Merge Articles
  As a blog administrator
  In order to optimice articles
  I want to be able to merge two similar articles in another one

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
    | id  | title                   | body               |
    | 10  | Article 1               | This is the body 1 |
    | 20  | Article 2               | This is the body 2 |
    | 30  | Article 3               | This is the body 3 |


  Scenario: Successfully simple merge 
    Given I am on the admin content page
    And I follow "Article 1"
    And I fill in "Article ID" with "20"	
	When I press "Merge"
	Then I should see "Article 1"
	And I should see "Article 3"
	And I should not see "Article 2"


  Scenario: Successfully Complex merge 
    And the following comments exist:
    | article_id      | body      |
    | 10              | comment 1 |
    | 20              | comment 2 |

    
    And I am on the admin content page
    And I follow "Article 1"
    And I fill in "Article ID" with "20"	
	When I press "Merge"
	And I am on the preview article page for id "10"
	Then I should see "This is the body 1"
	And I should see "This is the body 2"
	And I should see "comment 1"
	And I should see "comment 2"

	
	
	
	
	
	
	
	
	
	