import os
import requests
import sys

def push_message_lark(chat_id):
    lark_url = 'https://open.feishu.cn/open-apis/bot/v2/hook/' + chat_id
    heads = {
        "Content-Type": "application/json;charset=UTF-8"
    }
    body = {
        "msg_type": "text",
        "content": {
            "text": "message is what like this\n" +
            ">> app_event is ulink"
        }
    }
    result = requests.post(url=lark_url,json=body,headers=heads)
    result_json = result.json()
    print(result_json)

if __name__=='__main__':
    agrs = sys.argv
    chat_id = ''
    if len(agrs) > 1:
        chat_id = agrs[1]
    print(chat_id)
    # if chat_id is None or len(chat_id) == 0:
    #     print('chat_id is empty, please enter chat_id after python command')
    # else:
    #     push_message_lark(chat_id)


