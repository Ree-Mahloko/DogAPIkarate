Feature: Retrieving categories using The Dog API

  Background:
    * url 'https://api.thedogapi.com/v1/categories'
    * header Content-Type = 'application/json'
    * header x-api-key = 'live_HgOK0tilfFf4nopnDCXWhErGJNt1ufZTJKjAXJySkDf4PgirlRK8aFGLBgWot3iw'

  Scenario: Retrieving categories and logging each category
    Given method GET
    When path ''
    Then status 200
    * def categories = response
    * eval karate.forEach(categories, category => { karate.log('Category:', category.name) })
    * print response
