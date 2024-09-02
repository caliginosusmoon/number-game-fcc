#!/bin/bash

# Command to interact with the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY() {
  echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 

  # Get username
  echo "Enter your username:"
  read USERNAME

  # Get user_id from the database
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

  # If the user exists
  if [[ $USER_ID ]]; then
    # Get the number of games played by the user
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")

    # Get the minimum number of guesses (best game) made by the user
    BEST_GUESS=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
  else
    # If the user does not exist
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

    # Insert the new user into the users table
    INSERTED_TO_USERS=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

    # Get the new user_id
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  fi

  GAME
}

GAME() {
  # Generate the secret number
  SECRET=$((1 + $RANDOM % 1000))

  # Initialize the number of tries
  TRIES=1
  GUESSED=0

  echo -e "\nGuess the secret number between 1 and 1000:"

  while [[ $GUESSED -eq 0 ]]; do
    read GUESS

    # If the input is not a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
    # If the guess is correct
    elif [[ $GUESS -eq $SECRET ]]; then
      TRIES=$((TRIES + 1 ))
      echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
      
      # Insert the game result into the games table
      INSERTED_TO_GAMES=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")

      GUESSED=1
    # If the guess is too low
    elif [[ $GUESS -lt $SECRET ]]; then
      TRIES=$((TRIES + 1))
      echo -e "\nIt's higher than that, guess again:"
    # If the guess is too high
    else
      TRIES=$((TRIES + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done

  echo -e "\nThanks for playing :)\n"
}

DISPLAY
