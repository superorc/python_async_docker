FROM python:slim

WORKDIR /app

RUN apt update && apt install gcc -y && pip install uvicorn gunicorn

RUN apt remove gcc -y

COPY heyworld.py ./

EXPOSE 8000

# ["executable", "param1", "param2"] (exec form, preferred)
ENTRYPOINT ["gunicorn", "heyworld:app", "-b 0.0.0.0", "-w 10", "-k uvicorn.workers.UvicornWorker"]
