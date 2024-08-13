# 0x16. API Advanced

## Description

This project involves advanced usage of APIs, particularly focusing on data extraction, manipulation, and querying. The tasks are centered around interacting with the Reddit API to extract information such as top posts, number of subscribers, and more. By the end of this project, you will have a deeper understanding of how to work with APIs, handle JSON data, and create efficient queries.

## Learning Objectives

- How to read API documentation to find endpoints, methods, and parameters.
- How to use the `requests` module in Python to make HTTP requests to APIs.
- How to handle and parse JSON data.
- How to paginate through API responses when the data is too large to be returned in a single response.
- How to optimize API queries to reduce the number of requests.

## Project Files

- **0-subs.py**: A Python function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit.
- **1-top_ten.py**: A Python function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.
- **2-recurse.py**: A recursive Python function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found, the function should return `None`.
- **100-count.py**: A recursive Python function that queries the Reddit API, parses the titles of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces).

## How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your_username/your_repository.git
   ```
