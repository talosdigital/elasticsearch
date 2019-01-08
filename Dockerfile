FROM elasticsearch:5.5
MAINTAINER "Talos Digital"

RUN elasticsearch-plugin install analysis-phonetic
RUN elasticsearch-plugin install analysis-icu

USER elasticsearch
CMD ["/bin/bash", "bin/es-docker"]

EXPOSE 9200 9300
