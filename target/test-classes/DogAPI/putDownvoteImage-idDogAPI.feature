Feature: Downvote an image on The Dog API

  Scenario: Put a downvote for an image ID
    Given url 'https://api.thedogapi.com/v1/votes'
    And header Content-Type = 'application/json'
    And header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'
    And request { "image_id": "asf2", "sub_id": "my-user-1234", "value": 0 }
    When method post
    Then status 201
    And match response == { "message": "SUCCESS", "id": '#number', "image_id": "asf2", "sub_id": "my-user-1234", "value": 0, "country_code": "ZA" }
