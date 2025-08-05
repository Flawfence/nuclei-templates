#!/bin/bash

git fetch upstream
git merge upstream/main

if [ $? -ne 0 ]; then
    echo "Conflit détecté lors de la fusion. Veuillez résoudre les conflits avant de continuer."
    exit 1
fi

git push origin main