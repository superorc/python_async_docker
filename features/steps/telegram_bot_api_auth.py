import requests
import os, logging


@given(u'making an authorized request to Telegram bot API')
def step_impl(context):
    base_url = 'https://api.telegram.org/bot'

    try:
        token = os.environ['BOT_TOKEN']
    except Exception as e:
        logging.error("Please import Telegram API bot token into BOT_TOKEN env variable")
        raise

#    token = 'test'
    my_method = '/getMe'


    resp = requests.get(base_url + token + my_method)
    context.response = resp.status_code
    logging.info("Response code: " + str(context.response))



@then(u'will see 200')
def step_impl(context):
    #raise NotImplementedError(u'STEP: Then will see 200 ok')
    assert context.response == 200
