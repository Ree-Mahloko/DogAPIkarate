Feature: The get breeds requests in the dog api.

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header Content-Type = 'application/json'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'

  Scenario: This test will get all the breeds from the dog api, using breedData data provider.
    Given path '/breeds'
    And param limit = "10"
    And param page = 0
    When method get
    Then status 200
    And assert response.length == 10
