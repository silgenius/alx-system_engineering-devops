#!/usr/bin/python3


"""
a function that queries the Reddit API and prints the titles
of the first 10 hot posts listed for a given subreddit.
"""

import request


def top_ten(subreddit):
    sort_type = 'hot'

    url = f'https://www.reddit.com/r/{subreddit}/{sort_type}.json'
    response = requests.get(url, allow_redirects=False)
    
