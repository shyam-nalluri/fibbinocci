FROM apline

ADD fib.sh /app/fib.sh

RUN chmod +x /app/fib.sh

ENTRYPOINT ["bash","/app/fib.sh"]
