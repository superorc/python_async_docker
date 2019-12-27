from behave import *
import requests
import logging

@given(u'check not found err')
def step_impl(context, ):
    resp = requests.get("https://mironov.ninja/1111")
    context.response = resp.status_code
    logging.info("Response code: " + str(context.response))



@then(u'will see not found err')
def step_impl(context):
    #assert context.response is 404 doesn't work, only 200 ) wtf?
    assert context.response == 404
