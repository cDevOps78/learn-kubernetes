FROM alpine
RUN echo -e 'while true; do \n echo First Argument  - $1 \n echo Second Argument - $2 \n echo Thrid Arguments - $3 \n echo Total arguments - $@ \n sleep 5 \n done ' > /script1.sh
ENTRYPOINT ["sh","/script1.sh"]
CMD ["one","two","three"]
