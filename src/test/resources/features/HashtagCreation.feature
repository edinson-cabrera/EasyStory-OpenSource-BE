Feature: Create a new Hashtag
  As a user
  I want to create a new hashtag
  So that readers can follow my posts
  Scenario: The hashtag was created successfully
    Given i am a user and entered the correct data
    When i make a post request to "/api/hashtags"
    Then the response result received should be 200

  Scenario: The hashtag could not be created
    Given i am a user and entered the incorrect data
    When i make a post request to "/api/hashtags"
    Then the response result received should be a bad 400