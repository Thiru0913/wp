#!/bin/bash

# Define the URL of your WordPress site
site_url="http://13.232.158.212/wordpress"


# Send a cURL request to the site and store the HTTP response code in a variable
response_code=$(curl --write-out %{http_code} --silent --output /dev/null $site_url)

# Check if the response code indicates a successful request (200-299)
if [ $response_code -ge 200 ] && [ $response_code -lt 300 ]; then
  echo "WordPress site is loaded properly."
else
  echo "WordPress site is not loaded properly. Response code: $response_code"
fi
