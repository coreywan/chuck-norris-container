FROM ubuntu:18.10

RUN apt-get update -y && apt-get install -y jq curl

CMD curl -s https://api.chucknorris.io/jokes/random | jq -r '.value'
