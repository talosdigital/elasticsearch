FROM elasticsearch:6.8.10
MAINTAINER "Talos Digital"

RUN elasticsearch-plugin install analysis-phonetic
RUN elasticsearch-plugin install analysis-icu

EXPOSE 9200 9300

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["eswrapper"]

