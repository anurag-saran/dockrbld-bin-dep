# Gets the builder image for jboss-eap-6 from registry, 
# downloads the .war file and adds it to the $JBOSS_HOME/standalone/deployments folder. 
# It then creates a new application image and pushes into the docker registry configured in OpenShift.
FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
