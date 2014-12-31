Feature: Dynamic Cloudflare

  Scenario: View anything
    Given I authenticate as the user "foo" with the password "bar"
    When I send a GET request to "/"
    Then the response status should be "200"
