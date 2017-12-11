build-nginx:
	docker build -t opstree/nginx -f /home/rajatravi/Dockerfile/dockerfile /home/rajatravi/Dockerfile
run-nginx:
	docker rm -f nginx01 || true
	docker run -d --name nginx01 --hostname nginx.example.com --cpu-shares=200 --memory-reservation=400M opstree/nginx

make run-nginxx:
	make build-nginx
	make run-nginx
