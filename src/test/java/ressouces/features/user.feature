Feature: User management


  Scenario Outline: Get a user using ID
    Given I check the API status 200
    Then I get the user by id <id>
    
    Examples:
        #| id |
        #| 1  |
        #| 2  |

  Scenario Outline: Create a user using
    Given I check the API status 200
    Then I create the user from "<fileName>"
    
    Examples:
        | fileName          |
        | user1        |
        | user2        |

