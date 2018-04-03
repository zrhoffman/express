@page @photo
Feature: A Basic Page can contain many types of photos
When I create a Basic Page
As an authenticated user
I should be able to upload and place a photo

 #  NOTES ON TESTING:
 # 'WAIT FOR AJAX' IS NOT SUPPORTED BY GOUTTE DRIVER
 

# An authenticated user should be able to create a basic page node with a photo
#TEST ONE: A GRAPHIC CAN BE UPLOADED
@api 
Scenario: Upload Castle Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Castles"
  And I fill in "Body" with "The development of defensive architecture"
  And I attach the file "castle.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
  When I press "edit-submit"
  Then I should see "Castles"
  And I should see "The development of defensive architecture"
  
  
@api 
#TEST TWO: 
Scenario: Upload Cupcakes Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Cupcakes"
 And fill in "Body" with "Little cakes with frosting"
 And I attach the file "../cupcakes.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Yummy goodness"
 And I press "edit-submit"
 Then I should see "Cupcakes"
 And I follow "Edit"
 Then I should see "Edit Basic page Cupcakes"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Cupcakes"
  And I should see "Little cakes with frosting"
  And I should see "Yummy goodness"
 
@api 
#TEST THREE
Scenario: Upload Dog Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Dogs"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../dog.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Dogs"
 And I follow "Edit"
 Then I should see "Edit Basic page Dogs"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Dogs"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
@api 
#TEST Four
Scenario: Upload Old Main Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Old Main"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../../main.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Old Main"
 And I follow "Edit"
 Then I should see "Edit Basic page Old Main"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Old Main"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
 
@api 
#TEST FIVE
Scenario: Upload Mountains Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Mountains"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../../../mountains.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Old Main"
 And I follow "Edit"
 Then I should see "Edit Basic page Mountains"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Mountains"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
@api 
#TEST SIX
Scenario: Upload MTN BEE Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Mtn Bee"
 And fill in "Body" with "Demo body content"
 And I attach the file "assets/mtnbee.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Mtn Bee"
 And I follow "Edit"
 Then I should see "Edit Basic page Mtn Bee"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Mtn Bee"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
  -
@api 
#TEST SEVEN
Scenario: Upload Ralphie Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Ralphie"
 And fill in "Body" with "Demo body content"
 And I attach the file "../assets/ralphie.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Ralphie"
 And I follow "Edit"
 Then I should see "Edit Basic page Ralphie"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Ralphie"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
  
@api 
#TEST EIGHT
Scenario: Upload Saabs Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Saabs"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../assets/saab.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Saab"
 And I follow "Edit"
 Then I should see "Edit Basic page Saabs"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Saabs"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
@api 
#TEST NINE
Scenario: Upload Seagull Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Seagull"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../../assets/seagull.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Seagull"
 And I follow "Edit"
 Then I should see "Edit Basic page Seagull"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Seagull"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
  
@api 
#TEST NINE
Scenario: Upload Sunset Graphic
  Given I am logged in as a user with the "site_owner" role
  And I am on "node/add/page"
  And fill in "edit-title" with "Sunset"
 And fill in "Body" with "Demo body content"
 And I attach the file "../../../../assets/sunset.jpg" to "edit-field-photo-und-0-upload"
  And I fill in "edit-field-photo-und-0-alt" with "Scenic Photo"
 And I press "edit-submit"
 Then I should see "Sunset"
 And I follow "Edit"
 Then I should see "Edit Basic page Sunset"
 Then I should see "This document is now locked against simultaneous editing"
 And I should see "File information"
 And I press "edit-submit"
  Then I should see "Sunset"
  And I should see "Demo body content"
  And I should see "Scenic Photo"
