for d in */; do
	cd "$d"
	echo "updating $d"
	git pull
	cd ..
done
