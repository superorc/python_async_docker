import requests

@given(u'i check health check')
def step_impl(context, ):
    resp = requests.get("http://localhost:8000")
    #return resp.status_code
    context.response = resp.status_code



@then(u'i will see hello world message')
def step_impl(context):
    #resp.body == "Hello, world!"
    assert context.response is 200
