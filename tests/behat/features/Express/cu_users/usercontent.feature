@users @usertabs
Feature: Each User Page is populated with several tabs of informational content
When I am on the User pages
As an authenticated user with the proper role
I see a set of tabs populated with information about my users

Scenario Outline: Access - Certain roles have access to the individual User pages
Given I am logged in as a user with the <role> role
And I am on "admin/people"
# The following targets the first user in the user table cuz we don't know ID
When I click the ".views-field-edit-node a" element
Then return last response
Then I should see "Changes to Display Name, Primary Affiliation, and Last Name fields will be overwritten by LDAP the next time this user logs in."
Then I should see the link "Authored Content"
And I should see the link "Edited Content"
And I should see the link "Broken links"
And I should see the link "Locked documents"

Examples:
 | role             |
 | site_owner       |
 | administrator    |
 | developer      |

Scenario: Functionality - The user tabs should not be blank
Given I am logged in as a user with the "site_owner" role
And I am on "admin/people"
# The following targets the first user in the user table cuz we don't know ID
When I click the ".views-field-edit-node a" element
And I follow "Authored Content"
Then I should see "OPERATIONS"
And I follow "Edited Content"
Then I should see "OPERATIONS"
And I follow "Broken links"
Then I should see "No broken links have been found."
# Hiding the following check for now as Behat won't follow
# And I follow "Locked documents"
# Then I should see "Below is a list of all documents locked by you"
