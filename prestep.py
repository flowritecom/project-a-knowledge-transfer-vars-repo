# This is a prestep Python function

import os
import subprocess
import sys
import json
from get_secrets import get_secret

# clean up first
subprocess.run(
    ["rm .envrc .env"],
    shell=True,
    stdout=subprocess.PIPE,
    universal_newlines=True,
)

# which fetching rules to use in dhall
# pull this out from here?
rules = {"aws": {"fetch": get_secret}}

# top of the hierarchy file
# take this a command-line argument
filename = sys.argv[1]
stage = sys.argv[2]

## read the json
with open(f"{filename}.json", "r") as file:
    d = json.load(file)

for key, value in d.items():
    for key_st, value_st in value.items():
        if key == stage:
            for key_sect, value_sect in value_st.items():
                if value_sect["fetchingRule"] in rules:
                    secretId = value_sect["secretId"]
                    secretARN = value_sect["secretARN"]
                    print(f"\nFound a fetchable: {secretId}!")
                    print(f"Fetching for {secretId}.....")
                    secret_value = json.loads(
                        rules[value_sect["fetchingRule"]]["fetch"](secretARN)
                    )[secretId]
                    # lift to scope
                    print(
                        f"Successfully fetched a value for {secretId}.\nBinding to scope....."
                    )
                    os.environ[value_sect["key"]] = secret_value
                    with open(".env", "a") as f:
                        f.write(f"\n{value_sect['key']}={secret_value}")
                    with open(".envrc", "a") as f:
                        f.write(f"\nexport {value_sect['key']}={secret_value}")

                    print(
                        f"Bound a value for {value_sect['key']} into scope from {secretId}.\n"
                    )
                elif value_sect["fetchingRule"] == "local":
                    print(f"\nFound a local writeable: {value_sect['key']}!")
                    print("Binding to scope.....")
                    os.environ[value_sect["key"]] = value_sect["value"]
                    with open(".env", "a") as f:
                        f.write(f"\n{value_sect['key']}={value_sect['value']}")
                    with open(".envrc", "a") as f:
                        f.write(f"\nexport {value_sect['key']}={value_sect['value']}")

                    print(f"Bound a value for {value_sect['key']} into scope.")

print("Sorting .env and .envrc alphabetically..")
print("Finished")
subprocess.run(
    ["sort -o .env .env && sort -o .envrc .envrc"],
    shell=True,
    stdout=subprocess.PIPE,
    universal_newlines=True,
)

# clean up afterwards
subprocess.run(
    [f"rm prestep.py {filename}.json get_secrets.py"],
    shell=True,
    stdout=subprocess.PIPE,
    universal_newlines=True,
)
