#!/usr/bin/python3

"""
 a function that queries the Reddit API and returns the number of
 subscribers (not active users, total subscribers) for a given subreddit.
 If an invalid subreddit is given, the function should return 0.
"""

import requests


def number_of_subscribers(subreddit):
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    response = requests.get(url, headers=headers, allow_redirects=False)

    try:
        response = response.json()
    except Exception:
        return 0

    data = response.get("data")
    if data is None:
        return 0
    subscribers = data.get("subscribers")
    if subscribers is None:
        return 0
    return subscribers
