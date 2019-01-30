#!/bin/sh
echo "Hello world"

cd concourseDemo
fly -t target login -c $CONCOURSE_URL --username $USERNAME --password $PASSWORD
echo "Test1"
yes | fly -t target set-pipeline -c <(cat "ci/resource.yml" "ci/pipeline.yml") --load-vars-from credentials.yml 

echo "Configure pipeline"
