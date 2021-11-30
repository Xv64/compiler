docker:
	docker buildx build -t "xv64/compiler:${VER}-amd64" -f Dockerfile.native --platform linux/amd64 .
	docker push "xv64/compiler:${VER}-amd64"
	docker buildx build -t "xv64/compiler:${VER}-aarch64" -f Dockerfile.cross --platform linux/aarch64 .
	docker push "xv64/compiler:${VER}-aarch64"
	export DOCKER_CLI_EXPERIMENTAL=enabled
	docker manifest create "xv64/compiler:${VER}" \
    --amend  "xv64/compiler:${VER}-amd64" \
    --amend  "xv64/compiler:${VER}-aarch64"
	docker manifest inspect "xv64/compiler:${VER}"
	docker manifest push "xv64/compiler:${VER}"
