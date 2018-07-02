FROM python:3
ENV PORT=8000
WORKDIR /src
ADD requirements.txt data.sqlite biblioteca-api/api.py biblioteca-api/utils.py ./
RUN pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt
EXPOSE $PORT 
CMD hug -p $PORT -f api.py

