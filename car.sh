#!/bin/bash

CAR1="Hyundai"
CAR2="Subaru"

cd data/

if [ ! -d "$CAR1" ] && [ ! -f "$CAR1" ]; then
    echo "Switching to $CAR2."
    mv openpilot $CAR1 && mv $CAR2 openpilot
    echo "Now operating on $CAR2."
elif [ ! -d "$CAR2" ] && [ ! -f "$CAR2" ]; then
    echo "Switching to $CAR1."
    mv openpilot $CAR2 && mv $CAR1 openpilot
    echo "Now operating on $CAR1."
fi

#read -p "Which car do you want to DEACTIVATE? " CAR_DEACTIVATE
#read -p  "Which car do you want to ACTIVATE? " CAR_ACTIVATE

#function changecar(){
#    echo "Deactivating $1 and activating $2"
#    mv openpilot $1
#    mv $2 openpilot
#}

#changecar $CAR_DEACTIVATE $CAR_ACTIVATE

#read -p "Which car do you want to DEACTIVATE? " CAR_DEACTIVATE
#echo "DEACTIVATING... $CAR_DEACTIVATE"
#mv openpilot $CAR_DEACTIVATE 


#read -p  "Which car do you want to ACTIVATE? " CAR_ACTIVATE 
#echo "ACTIVATING... $CAR_ACTIVATE"
#mv $CAR_ACTIVATE openpilot

#echo "$CAR_ACTIVATE activated!"
