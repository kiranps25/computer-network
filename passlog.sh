#!/usr/bin/bash


USERNAME="admin"
PASSWORD="password123"

echo -n "Enter username: "
read user


echo -n "Enter password: "
read -s pass


if [[ "$user" == "$USERNAME" && "$pass" == "$PASSWORD" ]]; then
    echo -e "\nLogin successful! WELCOME $user"
else
    echo -e "\nLogin failed! Invalid username or password."
fi
