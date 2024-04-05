FROM registry.redhat.io/jboss-eap-7/eap74-openjdk11-runtime-openshift-rhel8:7.4.16-4
COPY jbossopenshift.ear $JBOSS_HOME/standalone/deployments/
USER root
RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/jbossopenshift.ear
USER jboss
