#!/bin/sh
version=$1
jq '.version = $v' --arg v $version mock_translation.json > tmp.$$.mock_translation.json 
mv tmp.$$.mock_translation.json mock_translation.json