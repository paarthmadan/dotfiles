#!/bin/bash
read -p "[Git Setup] - Enter your name: " name
read -p "[Git Setup] - Enter your email address: " email

git config --global user.name "$name"
git config --global user.email "$email"
