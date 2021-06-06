#!/bin/bash

repos=( 
  ""
  ""
)

echo ""
echo "Getting latest for" ${#repos[@]} "repositories using pull --rebase"

# for repo in "${repos[@]}"
# do
#   echo ""
#   echo "****** Getting latest for" ${repo} "******"
#   cd "${repo}"
#   git pull --rebase
#   echo "******************************************"
# done

echo ""
echo "Finisehed pull repositories..."

echo ""
echo "Getting maven build"


for repo in "${repos[@]}"
do
  echo ""
  echo "****** Build maven repo" ${repo} "******"
  cd "${repo}"
  mvn clean install -DskipTests=true
  cd ..
  echo "******************************************"
done