FROM registry.redhat.io/jboss-eap-7/jboss-eap-7/eap74-openjdk11-openshift-rhel8:7.4.16-2
COPY jbossopenshift.ear $JBOSS_HOME/standalone/deployments/
USER root
RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/jbossopenshift.ear
USER jboss
