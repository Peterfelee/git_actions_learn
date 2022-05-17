from urllib.parse import urlencode
from  urllib.parse import quote
import json


def encodeurl():
    host_url = "https://editor-res.vidma.com/ios/ulink/activity_image_page.html"
    json_path = "./auto_app_event/app_event_list.json"
    with open(json_path, 'r') as json_f:
        json_arr = json.load(json_f)
        print(json_arr)
        params = {}
        for json_dict in json_arr:
            image_path = json_dict.get('imagePath',None)
            if image_path is None or len(image_path) == 0:
                continue
            else:
                image_path = 'ios/activity/' + image_path + '@3x.png'
            params = json_dict
            params['imagePath'] = image_path
            yield host_url + '?' + urlencode(params,quote_via=quote)

if __name__ == "__main__":
    for str in encodeurl():
        print(str)
