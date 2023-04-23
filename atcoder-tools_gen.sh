#!/bin/bash

read -p "Enter Contest ID: " CONTEST_ID
read -p "Enter programming language: " LANG

if [ -z "$CONTEST_ID" ]; then
  echo "Error: Contest ID is empty."
  exit 1
fi

if [ -z "$LANG" ]; then
  echo "Error: Programming language is empty."
  exit 1
fi

atcoder-tools gen "$CONTEST_ID" \
  --workspace atcoder-workspace \
  --lang "$LANG" \
  --skip-existing-problems