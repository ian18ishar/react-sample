# fill the env file
#sed -i -e 's|REAK_STAGING_SONAR_URL|'"${REAK_STAGING_SONAR_URL}"'|g' docker-staging.env
#sudo docker login https://pelabuhan.alterra.dev -u "$(DOCKER_USERNAME)" -p "$(DOCKER_PASSWORD)"

###PELABUHAN
sudo docker build -f "Dockerfile" -t i2p/react-i2p:$TRAVIS_BUILD_ID .
sudo docker tag i2p/react-i2p:$TRAVIS_BUILD_ID i2p/react-i2p:hb-v1
sudo docker push i2p/react-i2p:hb-v1
###DOCKERHUB
#sudo docker build -f "Dockerfile" -t ianisharpratama/react-i2p:$TRAVIS_BUILD_ID .
#sudo docker tag ianisharpratama/react-i2p:$TRAVIS_BUILD_ID ianisharpratama/react-i2p:v2
#sudo docker push ianisharpratama/react-i2p:v2
#sudo docker tag ianisharpratama/reactsample:frontend-$TRAVIS_BUILD_ID ianisharpratama/reactsample:frontend-latest
#sudo docker push ianisharpratama/reactsample:frontend-latest

# go inside kubernetes Server
#sed -i -e 's|KUBE_STAGING_CA_CERT|'"${KUBE_STAGING_CA_CERT}"'|g' kubeconfig
#sed -i -e 's|KUBE_STAGING_ENDPOINT|'"${KUBE_STAGING_ENDPOINT}"'|g' kubeconfig

# set config for aws kredential
#sed -i -e 's|AWS_STAGING_ACCESS_KEY|'"${AWS_STAGING_ACCESS_KEY}"'|g' ~/.aws/credentials
#sed -i -e 's|AWS_STAGING_SECRET_KEY|'"${AWS_STAGING_SECRET_KEY}"'|g' ~/.aws/credentials

# update apps deployment
#kubectl -n coba --kubeconfig kubeconfig set image deployment/${APP_K8S_DEPLOYMENT_NAME} ${APP_K8S_CONTAINER_NAME}=ajisepulsa/alta:frontend-${TRAVIS_BUILD_NUMBER}
