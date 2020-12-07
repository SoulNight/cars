#! /bin/bash
# cars.sh
# Tony Bautista

USERINPUT=0

echo "List of cars"

while [ "$USERINPUT" -ne "3" ]
do
        echo "Type 1 to Add a car"
        echo "Type 2 to List the cars in the inventory file"
        echo "Type 3 to Quit the program"
        read -r USERINPUT

        echo "Enter the following information for your car."
        case "$USERINPUT" in
                "1") echo "Year: "
                read -r YEAR
                echo "Make: "
                read -r MAKE
                echo "Model: "
                read -r MODEL
                NEWCAR="$YEAR:$MAKE:$MODEL"
                echo "$NEWCAR" >> My_old_cars;;
                "2") sort My_old_cars;;
                "3") echo "Thank you!";;
                *) echo "You've selected and invalid option, please select options 1-3.";;
        esac
done

