#!/usr/bin/python3

"""
export data in the JSON format.
"""


def main():
    import json
    import requests
    import sys

    user_id = 1
    info = {}
    while True:
        base_url = f'https://jsonplaceholder.typicode.com'
        req = requests.get(f'{base_url}/users/{user_id}')
        employee_data = req.json()
        if not employee_data:
            break
        employee_name = employee_data.get('username')

        req = requests.get(f'{base_url}/todos?userId={user_id}')
        todos = req.json()

        data_list = []
        for data in todos:
            data_dict = {}
            data_dict["username"] = employee_name
            data_dict["task"] = data.get("title")
            data_dict["completed"] = data.get("completed")
            data_list.append(data_dict)

        info[user_id] = data_list
        user_id += 1

    with open(f'todo_all_employees.json', mode='w', encoding="utf-8") as f:
        f.write(json.dumps(info))


if __name__ == "__main__":
    main()
