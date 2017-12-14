#docker kill $( docker ps -a -q )
#docker rm $( docker ps -a -q )
#docker rmi $(docker images -f "dangling=true" -q )
docker build -t openfl/openfl_js_example .
docker run -d -p 3000:3000 openfl/openfl_js_example