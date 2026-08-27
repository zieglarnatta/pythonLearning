import requests
import json

response = requests.get("https://jsonplaceholder.typicode.com/todos/1")

photos = requests.get("https://jsonplaceholder.typicode.com/photos")

print(response.status_code)

print(response.json())

print(photos.status_code)

for photo in photos.json():
    print(photo['url'])

