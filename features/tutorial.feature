Feature: showing off behave

  Scenario: run a simple test
     Given we have behave installed
      When we implement a test
      Then behave will test it for us!

  Scenario: Smoke check service
    Given i check health check
    Then i will see hello world message
