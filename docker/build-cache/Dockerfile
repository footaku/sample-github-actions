# Build jar file
FROM ubuntu:jammy-20230624
ARG JAVA_VERSION=21.0.1
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install -yq curl zip unzip build-essential zlib1g-dev
RUN curl -s "https://get.sdkman.io" | bash
RUN source "${HOME}/.sdkman/bin/sdkman-init.sh" && \
    sdk install java ${JAVA_VERSION}-graalce && \
    sdk default java ${JAVA_VERSION}-graalce

ENV GRAALVM_HOME /root/.sdkman/candidates/java/${JAVA_VERSION}-graalce
ENV JAVA_HOME /root/.sdkman/candidates/java/${JAVA_VERSION}-graalce
ENV PATH $JAVA_HOME/bin:$PATH
WORKDIR /sample
RUN java --version
