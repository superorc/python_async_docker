FROM python:slim

WORKDIR /app

# apt purge vs remove has 0 effect
RUN apt update && apt install gcc -y && pip install uvicorn gunicorn && apt remove gcc -y

# use one or diff RUNs, size is remaining the same
#RUN apt remove gcc -y

COPY heyworld.py ./

EXPOSE 8000

# ["executable", "param1", "param2"] (exec form, preferred)
# !!!!!!!!!!!!11
# params witn "--" are ignored, wtf? like --bind instead of -b
ENTRYPOINT ["gunicorn", "heyworld:app", "-b 0.0.0.0", "-w 10", "-k uvicorn.workers.UvicornWorker"]
