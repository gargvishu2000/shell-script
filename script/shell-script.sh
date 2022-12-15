#!/usr/bin/env node
# portal-path=' aws s3 ls s3://softwaredocs/Portal/modeules/ROOT/pages'
if [[ $(aws s3 ls s3://softwaredocs/Portal/modeules/ROOT/pages | head ) ]]; then
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages/  --recursive
echo "1"
else
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages/  --recursive
echo "2"
fi

# keycloak-path='aws s3 ls s3://softwaredocs/Keycloak/modules/ROOT/pages'
if [[ $(aws s3 ls s3://softwaredocs/Keycloak/modeules/ROOT/pages | head) ]]; then
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/ --recursive
echo "3"
else
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/ --recursive
echo "4"
fi
# npx antora antora-playbook.yml
