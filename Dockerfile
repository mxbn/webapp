FROM scratch

COPY server/app /server/
COPY client/build/ /client/build/

EXPOSE 8080

CMD ["/server/app"]
