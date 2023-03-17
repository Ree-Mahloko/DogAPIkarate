Feature: Posting a favorite by sub ID

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'

  Scenario: Post a favorite with a random image_id
    Given path 'favourites'
    And header 'Content-Type' = 'application/json'
    And def randomId = java.util.UUID.randomUUID().toString()
    And request {sub_id: 'my-user-1234', image_id: '#(randomId)'}
    When method post
    Then status 200
    And eval karate.log('Response:', response)

