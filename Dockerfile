FROM lambci/lambda:build-nodejs12.x
# COPY package-lock.json .
# COPY package.json .
# COPY LICENSE .
# COPY index.js .
COPY . .

RUN touch fake.js
RUN zip -9yr lambda.zip .

ENTRYPOINT [ "/usr/bin/true" ]
