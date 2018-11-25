workspace=/home/workspace/

case $1 in
	build)
		docker build docker/ -t dkdns 
	;;
	run)
		docker run -it -w $workspace --privileged=true -v $(pwd)/dkdns/:/home/workspace/dkdns --entrypoint /bin/bash dkdns
	;;
	*)
		echo "usage: container.sh PARAM"
		echo "  PARAM:"
	       	echo "    build - build docker container"
	       	echo "    run - run container in workspace"
	;;
esac

