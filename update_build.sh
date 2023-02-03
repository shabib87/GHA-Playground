#!/bin/sh
version=$1
jq '.version = $v' --arg v $version mock_build.json > tmp.$$.mock_build.json && mv tmp.$$.mock_build.json mock_build.json

current_build="$(jq -r '.build' mock_build.json)"+1
build="$(echo $current_build | bc)"
jq '.build = $v' --arg v $build mock_build.json > tmp.$$.mock_build.json && mv tmp.$$.mock_build.json mock_build.json