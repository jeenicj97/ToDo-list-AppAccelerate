FROM python:3

WORKDIR /ToDo-list-AppAccelerate

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /ToDo-list-AppAccelerate/

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]