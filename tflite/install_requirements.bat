@echo off
set TEST_DATA_URL="https://github.com/google-coral/edgetpu/raw/master/test_data"
echo.
echo *** Using %TEST_DATA_URL% as test data URL...
echo.
IF exist models ( echo *** models dir already exists, skipping dir creation... ) ELSE ( echo *** Creating models dir && mkdir models )
IF exist images ( echo *** images dir already exists, skipping dir creation... ) ELSE ( echo *** Creating images dir && mkdir images )
echo.
cd models
curl -OL "%TEST_DATA_URL%/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite"
curl -OL "%TEST_DATA_URL%/mobilenet_v2_1.0_224_inat_bird_quant.tflite"
curl -OL "%TEST_DATA_URL%/inat_bird_labels.txt"
cd ../images
curl -OL "%TEST_DATA_URL%/parrot.jpg"
cd ..
echo.
echo *** Script completed.