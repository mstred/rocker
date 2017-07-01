FROM node

LABEL maintainer="@mstred"

RUN curl -o- -L https://yarnpkg.com/install.sh | bash \
  && yarn global add create-react-app \
  && create-react-app /tmp/app

COPY start.sh /

ENTRYPOINT /start.sh
