#!/bin/bash

# Function for the first submenu
submenu1() {
    while true; do
        echo "---- Submenu 1 ----"
        echo "1. Option 1"
        echo "2. Option 2"
        echo "3. Back to Main Menu"
        read -p "Choose an option: " sub_choice

        case $sub_choice in
            1)
                echo "You chose Option 1 in Submenu 1."
                ;;
            2)
                echo "You chose Option 2 in Submenu 1."
                ;;
            3)
                echo "Returning to Main Menu..."
                break
                ;;
            *)
                echo "Invalid choice. Please try again."
                ;;
        esac
    done
}

# Function for the second submenu
submenu2() {
    while true; do
        echo "---- Submenu 2 ----"
        echo "1. Option A"
        echo "2. Option B"
        echo "3. Back to Main Menu"
        read -p "Choose an option: " sub_choice

        case $sub_choice in
            1)
                echo "You chose Option A in Submenu 2."
                ;;
            2)
                echo "You chose Option B in Submenu 2."
                ;;
            3)
                echo "Returning to Main Menu..."
                break
                ;;
            *)
                echo "Invalid choice. Please try again."
                ;;
        esac
    done
}

tastebeer() {
millennium_text="Years since the millennium:"
current_time=$( date '+%H:%M:%S' )
todays_date=$( date '+%F' )
year=$( date '+%Y' )
echo "Current time:" $current_time
echo "Today's date:" $todays_date
years_since_Y2K=$(( year - 2000 ))
  
echo $millennium_text $years_since_Y2K
}

# Main menu function
main_menu() {
    while true; do
        echo "---- Main Menu ----"
        echo "1. Go to Submenu 1"
        echo "2. Go to Submenu 2"
        echo "3. Info Grabber"
        echo "4. Exit"
        read -p "Choose an option: " main_choice

        case $main_choice in
            1)
                submenu1
                ;;
            2)
                submenu2
                ;;
            3)  
                tastebeer
                ;;
            4)
                echo "Exiting program..."
                break
                ;;
            *)
                echo "Invalid choice. Please try again."
                ;;
        esac
    done
}

# Run the main menu
main_menu
