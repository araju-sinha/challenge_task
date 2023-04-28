import requests
import json

metadata_url = 'http://169.254.169.254/latest/'

def aws_meta_json(url, meta_key):
    output = {}
    for key in meta_key:
        key_url = url + key
        key_val = requests.get(key_url)
        text = key_val.text
        if key[-1] == "/":
            list_of_values = key_val.text.splitlines()
            output[key[:-1]] = aws_meta_json(key_url, list_of_values)
        elif is_json(text):
            output[key] = json.loads(text)
        else:
            output[key] = text
    return output
  
def is_json(myjson):
    try:
        json.loads(myjson)
    except ValueError:
        return False
    return True
    
def get_metadata():
    initial = ["meta-data/"]
    result_data = aws_meta_json(metadata_url, initial)
    return result_data

def get_metadata_json():
    metadata = get_metadata()
    metadata_json = json.dumps(metadata, indent=4, sort_keys=True)
    return metadata_json
  
if __name__ == '__main__':
    print(get_metadata_json())
