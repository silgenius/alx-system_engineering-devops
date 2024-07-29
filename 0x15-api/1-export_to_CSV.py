#!/usr/bin/python3

"""
export data in the CSV format.
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
    employee_name = employee_data.get('username')

    req = requests.get(f'{base_url}/todos?userId={user_id}')
    todos = req.json()

    file_content = ""
    for data in todos:
        file_content += f"""\"{user_id}\",\"{employee_name}\",\
"{data.get('completed')}\",\"{data.get('title')}\"\n"""

    with open(f'{user_id}.csv', mode='w', encoding="utf-8") as f:
        f.write(file_content)


if __name__ == "__main__":
    main()
