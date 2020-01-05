Feature: Auth telegram bot

#  Scenario: run a simple test
#     Given we have behave installed
#      When we implement a test
#      Then behave will test it for us!

  Scenario: try to auth telegram bot
    Given making an authorized request to Telegram bot API
    Then will see 200
