@AdvLayoutBundle  @block-row-block
Feature: the Block Row Block
In order to placed blocks side by side
As a user with the proper role
I should be able to access and use the Block Row Block
  

Scenario Outline: An authenticated user should be able to access the form for adding a block row block
    Given I am logged in as a user with the <role> role
    When I go to "block/add/block-row"
    Then I should see <message>

    Examples:
    | role            | message         |
    | edit_my_content | "Access denied" |
    | edit_only       | "Access denied" |
    | content_editor  | "Create Block Row block" |
    | site_owner      | "Create Block Row block" |
    | administrator   | "Create Block Row block" |
    | developer       | "Create Block Row block" |


Scenario: An anonymous user should not be able to access the form
  Given I go to "block/add/block-row"
  Then I should see "Access denied"

 @javascript
 #Note: You can't create a Block Row Block w/o javascript
Scenario: A Block Row Block can be created
Given I am logged in as a user with the "site_owner" role
And I go to "block/add/block-row"
And I fill in "edit-label" with "My Block Row Block Label"
And I fill in "edit-title" with "My Block Row Block Title"
# CREATE FIRST TEXT BLOCK
And I select "Text Block" from "edit-field-block-row-collection-und-0-field-block-row-block-und-actions-bundle"
And I wait for the ".ief-form" element to appear
And I fill in "Text Block Label" with "Text One Label"
And I fill in "Text Block Title" with "Text One Title"
And I follow "Disable rich-text"
 And fill in "Body" with "Cupcake ipsum dolor sit amet ice cream carrot cake"
 And I press "Create block"
 # CREATE SECOND TEXT BLOCK
 And I press "Add another column"
And I select "Text Block" from "edit-field-block-row-collection-und-1-field-block-row-block-und-actions-bundle"
And I wait for the ".ief-form" element to appear
And I fill in "Text Block Label" with "Text Two Label"
And I fill in "Text Block Title" with "Text Two Title"
And I follow "Disable rich-text"
 And fill in "Body" with "Lemon drops dessert chocolate gingerbread dessert"
 And I press "Create block"
And I check "edit-field-block-row-match-height-und"
And I press "Save"
Then I should see "My Block Row Block Title"
Then I should see "Cupcake ipsum dolor sit amet ice cream carrot cake"
And I should see "Lemon drops dessert chocolate gingerbread dessert"
 
@broken 
# This test depends on the one above, which doesn't get run cuz its javascript
Scenario: An EditOnly can edit a Block Row Block
Given I am logged in as a user with the "edit_only" role
And am on "block/my-block-row-block-label/view"
Then I should see the link "Edit Block"
And I follow "Edit Block"
Then I should see "Edit Block Row: My Block Row Block Label"
And I should not see "Delete"
