FROM python:3.12.1-alpine
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN python -m pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
