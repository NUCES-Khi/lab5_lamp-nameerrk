#!/bin/bash

read -p "Enter 'TO' email address: " to_email
read -p "Enter 'FROM' email address: " from_email
read -p "Enter email subject: " subject
read -p "Enter email message body: " message_body

temp_file=$(mktemp)

echo "To: $to_email" >> "$temp_file"
echo "From: $from_email" >> "$temp_file"
echo "Subject: $subject" >> "$temp_file"
echo "" >> "$temp_file"
echo "$message_body" >> "$temp_file"

mta="/path/to/sendmail"
s-nail -S mta="$mta" -s "Subject" recipient@example.com <<< "Hello, this is a test email."


rm "$temp_file"

echo "Email sent successfully!"
