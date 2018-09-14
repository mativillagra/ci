FROM node:7-alpine

COPY Readme.md /

CMD ["cat", "Readme.md"]
