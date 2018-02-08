FROM gocd/gocd-server:v18.1.0

RUN mkdir -p /godata/config && \
	mkdir -p /godata/plugins/external

ADD cruise-config.xml /godata/config/
ADD kubernetes-elastic-agent-0.0.1-50.jar /godata/plugins/external/

RUN chown go:go /godata/config && \
	chown go:go /godata/config/cruise-config.xml && \
	chown go:go /godata/plugins/external/kubernetes-elastic-agent-0.0.1-50.jar

