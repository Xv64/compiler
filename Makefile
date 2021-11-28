images:
	docker buildx build -t "xv64/compiler:latest" -f Dockerfile.native --platform linux/amd64 .
	docker buildx build -t "xv64/compiler:latest" -f Dockerfile.cross --platform linux/arm64 .
