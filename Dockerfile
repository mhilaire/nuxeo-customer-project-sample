FROM nuxeo:9.2

VOLUME /home/jenkins

ENV JENKINS_JOB=nuxeo-customer-project-sample-package
ENV M2_PATH=com/customer/sample
ENV VERSION=1.0-SNAPSHOT
ENV PACKAGE_NAME=nuxeo-customer-project-sample-package
ENV NUXEO_PACKAGES=/home/jenkins/.m2/repository/${M2_PATH}/${JENKINS_JOB}/${VERSION}/${PACKAGE_NAME}-${VERSION}.zip

USER root

CMD ["nuxeoctl","console"]

USER 1000

