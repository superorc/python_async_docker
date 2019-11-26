FROM python:slim

WORKDIR /app

RUN apt update && apt install gcc && pip install uvicorn \
    && apt remove gcc

COPY heyworld.py ./

EXPOSE 8000

# ["executable", "param1", "param2"] (exec form, preferred)
ENTRYPOINT ["gunicorn" , "heyworld:app", "-w 4"]
