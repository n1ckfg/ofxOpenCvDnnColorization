#!/usr/bin/env bash
set -euxo pipefail

#path_to_cfg="https://raw.githubusercontent.com/richzhang/colorization/master/colorization/models/colorization_deploy_v2.prototxt"
#path_to_weights="http://eecs.berkeley.edu/~rich.zhang/projects/2016_colorization/files/demo_v2/colorization_release_v2.caffemodel"

path_to_cfg="https://raw.githubusercontent.com/alexellis/faas-colorization/master/function/models/colorization_deploy_v2.prototxt"
path_to_weights="https://www.dropbox.com/s/dx0qvhhp5hbcx7z/colorization_release_v2.caffemodel?dl=1"

if wget ${path_to_weights}; then
	echo "downloading caffemodel"
else
	echo "wget is not installed. Falling back to curl"
	curl -O "${path_to_weights}"
fi
cp ./colorization_release_v2.caffemodel ./Examples/single_image/bin/data
cp ./colorization_release_v2.caffemodel ./Examples/videofile/bin/data
if wget ${path_to_cfg}; then
	echo "downloading prototxt"
else
	echo "wget is not installed. Falling back to curl"
	curl -O "${path_to_cfg}"
fi
cp ./colorization_deploy_v2.prototxt ./Examples/single_image/bin/data/
cp ./colorization_deploy_v2.prototxt ./Examples/videofile/bin/data/
rm -f ./colorization_deploy_v2.prototxt
rm -f ./colorization_release_v2.caffemodel
echo "done"
