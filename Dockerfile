FROM node

RUN apt update
COPY code /bin/code
RUN chmod +x /bin/code
USER node
CMD [ "code","tunnel"]

