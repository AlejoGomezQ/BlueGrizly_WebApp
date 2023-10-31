import os
import subprocess
import json

with open('./app.json', 'r') as file:
    data = json.load(file)

gitClone = 'git clone'

os.system(gitClone + ' ' + data['url'])
os.system('cd front && ng build --optimization')
html = os.system('cd www && pwd')
