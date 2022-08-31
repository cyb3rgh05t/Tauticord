FROM python:latest

LABEL maintainer=cyb3rgh05t
LABEL org.opencontainers.image.source https://github.com/cyb3rgh05t/tauticord

WORKDIR /app

# Install dependencies
COPY ./requirements.txt ./
RUN pip3 install -r requirements.txt

# Copy source code
COPY .. /app

# Run the app
CMD [ "python", "./Tauticord.py" ]
