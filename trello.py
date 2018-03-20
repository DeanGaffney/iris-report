import requests
import simplejson as json

r = requests.get('https://api.trello.com/1/boards/yxmoMkuv/cards?fields=labels,name&key=54ebccc76a845d4676118df0c6ff9bd6&token=b79225c7073db96bd8275848eb9c4ffdf0912c593c7bc85ad29ddc725a36b735')
sprint_prefix = '0.0.'
sprint_dict = {}
for i in range(1, 7, 1): sprint_dict[sprint_prefix + str(i)] = []

for resp in r.json():
    for label in resp['labels']:
        if(label['name'].startswith(sprint_prefix)):
            sprint_dict[label['name']].append(resp['name'])
print(json.dumps(sprint_dict))
