FROM python:3.11-slim
WORKDIR /app
COPY . .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
CMD [ "python","app.py" ]