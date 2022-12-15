#!/usr/bin/env node
# portal-path=' aws s3 ls s3://softwaredocs/Portal/modeules/ROOT/pages'
if [[ $(aws s3 ls s3://softwaredocs/Portal/modeules/ROOT/pages | head ) ]]; then
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages/  --recursive
echo "1"
else
aws s3 cp s3://antora/docs s3://softwaredocs/Portal/modules/ROOT/pages/  --recursive
echo "2"
fi

if [[ $(aws s3 ls s3://softwaredocs/Keycloak/modeules/ROOT/pages | head) ]]; then
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/
echo "3"
else
aws s3 cp s3://antora/docs/index.adoc s3://softwaredocs/Keycloak/modules/ROOT/pages/
echo "4"
fi

sudo npm install -g npx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install v16.2.0
node -e "fs.writeFileSync('package.json', '{}')"
npm i -D -E @antora/cli@3.1 @antora/site-generator@3.1
npx antora --fetch antora-playbook.yml
# npx antora antora-playbook.yml
