Feature: Retrieving a Vote by ID

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'

  Scenario: Retrieve a Vote by ID
    Given path 'votes/426'
    And header 'Content-Type' = 'application/json'
    When method get
    Then status 200
    Then  karate.log("Response:", response)
