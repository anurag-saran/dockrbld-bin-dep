FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $EAP_HOME/standalone/deployments/ROOT.war
