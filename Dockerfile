FROM daocloud.io/library/elasticsearch:2.4.6
MAINTAINER zrj <1106977428@qq.com>
ENV ES_PLUGINS_PATH /usr/share/elasticsearch/plugins
ENV ik_SRC_COMPILE_PATH /opt/ik_build
RUN mkdir $ik_SRC_COMPILE_PATH && \
cd $ik_SRC_COMPILE_PATH && \
wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v1.10.6/elasticsearch-analysis-ik-1.10.6.zip && \
unzip elasticsearch-analysis-ik-1.10.6 -d  analysis-ik&& \
mv analysis-ik $ES_PLUGINS_PATH/
