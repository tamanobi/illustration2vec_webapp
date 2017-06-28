FROM python:2.7.13

WORKDIR /home
COPY packages.txt /home
#RUN apk --update add ruby && rm -rf /var/cache/apk/*
RUN \
    #apt-get update && apt-get install git curl && \
    pip install -r packages.txt && \
    git clone --depth=1 --branch feature/web_api --single-branch https://github.com/tamanobi/illustration2vec.git && \
    cd illustration2vec && ./get_models.sh && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
EXPOSE 5000
COPY run.sh /home
ENTRYPOINT ["./run.sh"]

