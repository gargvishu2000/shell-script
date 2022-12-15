#!/bin/bash
path=' aws s3 ls s3:softwaredocs/Portal/modeules/ROOT/pages'
if [[ -z path ]]; then
aws s3 cp s3://antora/docs s3://softwaredocs/  --recursive
else
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages  --recursive
fi