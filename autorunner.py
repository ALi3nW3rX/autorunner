import os
import subprocess
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Retrieve stored variables
IP = os.getenv("IP")
USERNAME = os.getenv("USERNAME")
PASSWORD = os.getenv("PASSWORD")

# Ensure variables are set
if not IP or not USERNAME or not PASSWORD:
    print("Error: Environment variables are missing. Check your .env file.")
    exit(1)

# Define the list of commands
commands = [
    f"nxc smb {IP} -u {USERNAME} -p {PASSWORD}",
    f"nxc smb {IP} -u {USERNAME} -p {PASSWORD} --users",
    f"nxc smb {IP} -u {USERNAME} -p {PASSWORD} --shares"
]

# Execute the commands
for cmd in commands:
    print(f"Running: {cmd}")
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)

    if result.returncode == 0:
        print(f"Output:\n{result.stdout}")
    else:
        print(f"Error:\n{result.stderr}")
