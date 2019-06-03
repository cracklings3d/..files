pushd ~/.vim/bundle/
for d in */; do
	pushd "$d"
	echo "updating $d"
	git pull
	popd
done
popd
