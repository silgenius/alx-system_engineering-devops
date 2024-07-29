#!/usr/bin/python3

import pandas as pd
import json

# Sample JSON data
json_data = '''
[
    {"name": "John Doe", "age": 33},
    {"name": "Jane Smith", "age": 28}
]
'''

# Load JSON data
data = json.loads(json_data)

# Convert JSON to DataFrame
df = pd.DataFrame(data)

# Save DataFrame to CSV
df.to_csv('output.csv', index=False)

print("JSON data has been converted to CSV and saved as 'output.csv'.")
