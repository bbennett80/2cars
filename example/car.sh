#!/bin/bash

CAR1="Toyota"
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
