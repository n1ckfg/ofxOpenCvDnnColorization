# ofxOpenCvDnnObjectDetection

## Description
ofxOpenCvDnnColorization is an addon for openframeworks.

OpenCV v.3.3.1 or upper includes dnn module ( https://docs.opencv.org/3.4.1/da/d9d/tutorial_dnn_yolo.html ) in their own package. Therefore I designed ofxOpenCvDnnColorization with OpenCV v.3.3.1 or upper version.

![sample gif](sample.gif)

## Usage
See Examples for more details
```
void setup()
{
    ofImage img;
    img.load(ofToDataPath("sample.jpg"));

    colorization.update(img.getPixels());
}
void draw()
{
    ofBackground(0);
    colorization.draw(0,0);
}

```


## Install
### 1. Clone ofxOpenCvDnnObjectDetection to your of/addon directory
    $ git clone https://github.com/TetsuakiBaba/ofxOpenCvDnnColorization.git
### 2. Download OpenCV.framework to ofxOpenCvDnnColorization/libs directory. 
    $ curl -O http://tetsuakibaba.jp/tmp/opencv2.framework.zip
    $ unzip opencv2.framework.zip
   
Or you may build your own opencv.framework from opencv source. ( http://tetsuakibaba.jp/ws/doku.php?id=opencv_dnn:opencv2.framework )

## Getting Started with Examples/single_image.
### 1. Download models
    $ sh getModels.sh
### 2. Update single_image with the projectGenerator.
![single_image screenshot](projectGenerator.png)
### 3. Run

## Compatibility
- only macOS ( tested on Mojave)
- of version: 0.10.1

## Licence
[MIT](https://opensource.org/licenses/MIT)

## Author
[TetsuakiBaba](https://github.com/TetsuakiBaba)

## Reference
1. Model Zoo on OpenCV DNN Module README page: https://github.com/opencv/opencv/blob/master/samples/dnn/README.md
2. How to implement OpenCV Yolo on Openframeworks: https://qiita.com/buchayaty/items/4020100f531c07418f38

