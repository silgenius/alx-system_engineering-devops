#!/usr/bin/python3


"""
a function that queries the Reddit API and prints the titles
of the first 10 hot posts listed for a given subreddit.
"""

import requests


def top_ten(subreddit):
    sort_type = 'hot'

    url = f'https://www.reddit.com/r/{subreddit}/{sort_type}.json'
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.get("data")
        children = data.get("children")
        count = 0
        for child in children:
            if count < 10:
                title = child.get("data").get("title")
                print(title)
                count += 1
    print("None")
