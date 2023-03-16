Feature: Upvoting an image using The Dog API

  Background:
    * url 'https://api.thedogapi.com/v1/votes'
    * header Content-Type = 'application/json'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'

  Scenario: Upvoting an image by a user with a negative vote

    Given request { "image_id": "asf2", "sub_id": "my-user-1234", "value": -10 }
    When method POST
    Then status 201
    And match response == { "message": "SUCCESS", "id": '#number', "image_id": "asf2", "sub_id": "my-user-1234", "value": -10, "country_code": "ZA" }
