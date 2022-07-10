#!/bin/bash

echo "Under construction..."

exit 0

git fetch
result=true

if [ $1 != null && $2 != null ] then
  $result=$(git checkout $2)
  if [ $result ] then
    git pull
    $result=$(git checkout $1)
    if [ $result ] then
      git pull
      $result=$(git merge $2)
      if [ $result ] then
        git push
        git checkout $2
        $result=$(git merge $1)
        if [ $result ] then
          $result=$(sh script-maven-build-with-tests.sh)
          if [ $result ] then
            git push
          fi
        fi
      fi
    fi
  fi
fi

if [ $1 != null && $2 != null ]; then
  echo $result
  $result=$(git checkout $2)
  echo $result
  if [ $result == true ]; then
    echo $result
  fi
fi

