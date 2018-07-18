rm -r /root/opentracing-tutorial &&

python2.7 -m pip install futures &&

git clone https://github.com/yurishkuro/opentracing-tutorial.git &&

cd /root/opentracing-tutorial/python &&

python2.7 -m pip install -r requirements.txt &&

mkdir -p lesson02/exercise &&

cd ./lesson02/exercise &&

touch __init__.py &&

docker run -d -e COLLECTOR_ZIPKIN_HTTP_PORT=9411 \
-p 5775:5775/udp \
-p 6831:6831/udp \
-p 6832:6832/udp \
-p 5778:5778 \
-p 16686:16686 \
-p 14268:14268 \
-p 9411:9411 \
jaegertracing/all-in-one:latest &&

clear
