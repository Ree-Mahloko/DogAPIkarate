Feature: Saving a Favorite without a Sub ID

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'

  Scenario: Post a favorite without a sub ID
    Given path 'favourites/'
    And header 'Content-Type' = 'application/json'
    And request {image_id: '12g3fg45'}
    When method post
    Then status 200
    And match response.message == "SUCCESS"
    And eval karate.log('Response:', response)
    And karate.log("created dog saved!");