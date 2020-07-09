#!/bin/bash

docker run \
    -it \
    --net=analyze_log_default \
    -v /home/iwase/work/analyze_log/pipeline:/usr/share/logstash/pipeline \
    -v /home/iwase/work/analyze_log/patterns:/usr/share/logstash/patterns \
    -v /home/iwase/work/analyze_log/syslog:/usr/share/logstash/syslog \
    -v /home/iwase/work/analyze_log/syslog.1:/usr/share/logstash/syslog.1 \
    -p 5004:5004 docker.elastic.co/logstash/logstash:7.8.0 \
    /bin/bash
