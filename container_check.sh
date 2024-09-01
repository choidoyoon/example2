nginx_container_id=`docker ps -aq --filter 'name=nginx'`

if[-n "$nginx_container_id"];
	then
		echo "nginx container exist"
		docker stop $nginx_container_id
		docker rm $ningx_container_id
		docker run -d -p 80:80 --name nginx nginx:test
	else
		echo "nginx container not exist"
		docker run -d -p 80:80 --name nginx nginx:test
fi
