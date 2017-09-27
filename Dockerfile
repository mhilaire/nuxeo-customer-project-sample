FROM nuxeo:9.2


ENV M2_PATH=com/customer/sample
ENV VERSION=1.0-SNAPSHOT
ENV PACKAGE_NAME=nuxeo-customer-project-sample-package

ADD ./${PACKAGE_NAME}/target/${PACKAGE_NAME}-${VERSION}.zip /opt/nuxeo/server/${PACKAGE_NAME}-${VERSION}.zip
ENV NUXEO_PACKAGES=/opt/nuxeo/server/${PACKAGE_NAME}-${VERSION}.zip

USER root

CMD ["nuxeoctl","console"]

USER 1000

