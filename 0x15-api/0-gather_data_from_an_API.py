#!/usr/bin/python3

"""
a Python script that, using this REST API, for a given employee ID, returns
information about his/her TODO list progress.
"""


def main():
    import requests
    import sys

    try:
        user_id = sys.argv[1]
    except Exception:
        return

    base_url = f'https://jsonplaceholder.typicode.com'
    req = requests.get(f'{base_url}/users/{user_id}')
    employee_data = req.json()
    employee_name = employee_data.get('name')

    req = requests.get(f'{base_url}/todos?userId={user_id}')
    todos = req.json()

    task_completed = 0
    total_task = 0
    task_title = ""
    for data in todos:
        if data.get('completed') is True:
            task_title += f"\t {data.get('title')}\n"
            task_completed += 1
        total_task += 1

    print(f'Employee {employee_name} is done with \
 tasks({task_completed}/{total_task}):')

    print(f'{task_title}', end="")


if __name__ == "__main__":
    main()
