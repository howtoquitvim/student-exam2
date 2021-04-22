FROM python:3.8-slim

COPY . .

RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -e .

EXPOSE 5000

ENV FLASK_APP=js_example
CMD ["flask", "run", "--host", "0.0.0.0"]
