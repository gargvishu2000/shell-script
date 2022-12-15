#!/usr/bin/env node
portal-path=' aws s3 ls s3:softwaredocs/Portal/modeules/ROOT/pages'
if [[ -z portal-path ]]; then
aws s3 cp s3://antora/docs s3://softwaredocs/  --recursive
else
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages/  --recursive
fi

keycloak-path='aws s3 ls s3://softwaredocs/Keycloak/modules/ROOT/pages'
if [[ -z keycloak-path ]]; then
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/ --recursive
else
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/ --recursive
fi
# npx antora antora-playbook.yml
