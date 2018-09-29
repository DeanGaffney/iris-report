import requests, re
import simplejson as json

def texify(content):
    return re.sub(r'_|\$', '', content)

with open('./conf/conf.json') as conf_file:
    conf = json.load(conf_file)
    key = conf["apis"]["trello"]["key"]
    token = conf["apis"]["trello"]["token"]
    params = {"key": key, "token": token}
    r = requests.get('https://api.trello.com/1/boards/yxmoMkuv/cards?fields=labels,name', params=params)
    sprint_prefix = '0.0.'
    sprint_dict = {}
    for i in range(1, 7, 1): sprint_dict[sprint_prefix + str(i)] = []

    for resp in r.json():
        for label in resp['labels']:
            if(label['name'].startswith(sprint_prefix)):
                sprint_dict[label['name']].append(resp['name'])

    with open('trello.tex', 'w') as tex_file:
        tex_file.write('\\begin{document}\n\chapter{Methodology}\n\section{Trello}')
        for sprint in sprint_dict.keys():
            tex_file.write('\subsection*{' + sprint + '}\n\\begin{itemize}\n')
            tex_file.writelines(map(lambda issue: '\item ' + texify(issue) + '\n', sprint_dict[sprint]))
            tex_file.write('\end{itemize}\n')
        tex_file.write('\end{document}')


