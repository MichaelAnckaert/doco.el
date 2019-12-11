FROM python:3.8
EXPOSE 8000
WORKDIR /app
COPY src/requirements.txt /tmp/requirements.txt
RUN python -m pip install -r /tmp/requirements.txt
COPY src/ /app/
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]