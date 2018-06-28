FROM python:3-alpine
LABEL maintainer seungkyua@gmail.com
RUN mkdir -p /app
ADD requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY . /app
WORKDIR /app
ENV LINK http://www.meetup.com/cloudyuga/
ENV TEXT1 Open Infra Day 2018
ENV TEXT2 Kubernetes User Group!
ENV LOGO https://raw.githubusercontent.com/seungkyua/rsvpapp/master/static/k8s_logo.png
ENV COMPANY Kubernetes User Group
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["rsvp.py"]
