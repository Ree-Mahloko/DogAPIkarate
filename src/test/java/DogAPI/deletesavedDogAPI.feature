Feature: Deleting a saved favorite by ID

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'

  Scenario: Delete a saved favorite by ID
    Given path 'favourites/70379'
    And header 'Content-Type' = 'application/json'
    When method delete
    Then status 400
    And eval karate.log('Response:', response)
