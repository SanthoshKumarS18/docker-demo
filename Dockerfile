FROM python:3.10-slim
WORKDIR /app
COPY requirment.txt .
RUN pip install --no-cache-dir -r requirment.txt
COPY . .
EXPOSE 6000
CMD ["python","app.py"]
