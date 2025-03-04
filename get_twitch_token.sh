name: Run Twitch API Script

on: [push]  # Runs when you push changes

jobs:
  run-script:
    runs-on: ubuntu-latest  # Uses an Ubuntu server
    steps:
      - name: Checkout repository
        uses: actions/checkout@v3  # Fetches your code

      - name: List Files (Debugging)
        run: ls -lah  # Show all files in the repo

      - name: Install Dependencies
        run: sudo apt-get update && sudo apt-get install -y jq curl

      - name: Make Script Executable
        run: chmod +x ./get_twitch_token.sh

      - name: Run Script
        run: bash ./get_twitch_token.sh
