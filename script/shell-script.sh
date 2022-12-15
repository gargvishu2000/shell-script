#!/bin/bash
if [[ -d Portal ]]; then
aws s3 cp s3://antora/docs/argument.adoc s3://software-docs-1/
else
aws s3 ls s3://software-docs-1/Portal
aws s3 cp s3://antora/docs/argument.adoc s3://software-docs-1/