#!/usr/bin/python3

"""
export data in the JSON format.
"""


def main():
    import json
    import requests
    import sys

    try:
        user_id = sys.argv[1]
    except Exception:
        return

    base_url = f'https://jsonplaceholder.typicode.com'
    req = requests.get(f'{base_url}/users/{user_id}')
    employee_data = req.json()
    employee_name = employee_data.get('username')

    req = requests.get(f'{base_url}/todos?userId={user_id}')
    todos = req.json()

    data_list = []
    for data in todos:
        data_dict = {}
        data_dict["task"] = data.get("title")
        data_dict["completed"] = data.get("completed")
        data_dict["username"] = employee_name
        data_list.append(data_dict)

    info = {}
    info[user_id] = data_list

    with open(f'{user_id}.json', mode='w', encoding="utf-8") as f:
        f.write(json.dumps(info))


if __name__ == "__main__":
    main()
