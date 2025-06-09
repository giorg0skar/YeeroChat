FROM python:3.13.4-alpine3.22
COPY . .
RUN python -m ensurepip
RUN ls
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]