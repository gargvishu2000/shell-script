#!/bin/bash
path=' aws s3 ls s3:softwaredocs/Portal'
if [[ -z path ]]; then
aws s3 cp s3://antora/docs/ s3://softwaredocs/
else
aws s3 cp s3://antora/docs/ s3://softwaredocs/Portal/
fi