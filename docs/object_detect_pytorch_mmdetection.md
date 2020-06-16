# PyTorch-MMDetection

[mmdetection](https://github.com/open-mmlab/mmdetection) [1] is a popular github repository that provides training code for several object detection algorithms. We have forked it and made the following changes:
- Added Training configs for speed/accuracy optimized models.
- Quantization Aware Training.
- Export models into a format that Jacinto7/TDA4-TIDL understands.

The forked repository is here: 
- pytorch-mmdetection documentation [link](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/about/), git clone url [link](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/).

We explain how to do initial Floating Point Training and the Quantization Aware Training (QAT) of some of the popular models using pytorch-mmdetection. 

Note: Jacinto7/TDA4 TIDL currently understands and is able to completely infer Single Shot MultiBox Detector (SSD) [2] and can do object detection using an SSD model. For other object detectors such as RetianNet or FCOS, it is only be able to infer the CNN part except the detection heads - and in those cases, the detection heads should be implemented as "Custom Layers".

## Installation
- Installation instructions for pytorch-mmdetection are given in its documentation.
- Note: pytorch-mmdetection also requires [pytorch-jacinto-ai-devkit](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/), as several modules are used from it, including tools/modules for QAT.

## Training

#### Floating Point Training
- Several complexity optimized configurations are provided in the folder pytorch-mmdetection/configs/jacinto_ai
- Training is done by pytorch-mmdetection/scripts/train_main.py or pytorch-mmdetection/scripts/train_dist.py (Select the appropriate config file inside these scripts).
- Once the training is done test can be done by pytorch-mmdetection/scripts/test_main.py or pytorch-mmdetection/scripts/test_dist.py (Select the appropriate config file inside these scripts).

#### Quantization Aware Training
- Detailed explanation about the tools and modules for quantization are provided in the documentation of pytorch-jacinto-ai-devkit. But briefly explaining, the following are the main tools provided:<br>
    - Quantization Aware Training (QAT): QuantTrainModule<br>
    - Post Training Calibration for Quantization (PTQ/Calibration): QuantCalibrateModule<br>
    - Accuracy Test with Quantization: QuantTestModule<br>
- After a model is created in pytorch-mmdetection, it is wrapped in one of the above modules depending on whether the current phase is QAT, PTQ or Test with Quantization.
- Loading of pretrained model or saving of trained model needs slight change when wrapped with the above modules as the original model is inside the wrapper (otherwise the symbols in pretrained will not match).
- QuantCalibrateModule is fast, but QuantTrainModule typically gives better accuracy. QuantTrainModule and QuantTestModule supports multiple gpus, whereas QuantCalibrateModule has the additional limitation that it doesn't support multiple gpus. 
- Training with QuantTrainModule is just like any other training. However using QuantCalibrateModule is a bit different in that it doesn't need backpropagation - so backpropagation is disabled when using QuantCalibrateModule.
- We have derived additional classes from these modules called MMDetQuantTrainModules, MMDetQuantCalibrateModules and MMDetQuantTestModules because the forward call of models in mmdetection is a bit different. For example for tracing through the model, a forward_dummy method is used in mmdetection. Also the way arguments are passed to forward call are also a bit different.  

## Testing
- Test can be done by using the scripts ./scripts/test_main.py or ./scripts/test_dist.py
- To enable quantization during test, the quantize flag in the config file being used must be a "truth value in Python" - i.e. a string or True or something like that. If quantize is commented out or if it is False, None etc, quantization will not be performed.

## Results & Model Zoo

#### Pascal VOC2007 Dataset
- Train on Pascal VOC 2007+2012
- Test on Pascal VOC 2007

|Dataset    |Mode Arch        |Backbone Model |Backbone Stride|Resolution |Acc Float|Acc 8bit Calib|Acc 8bit QAT|GigaMACS|Est. Inf. Time (msec)*|Model Config File                       |Download |
|---------  |----------       |-----------    |-------------- |-----------|-------- |-------       |----------  |------- |-----------------------|----------                             |---
|VOC2007    |SSD with FPN     |MobileNetV2    |32             |512x512    |76.1     |75.4          |75.4        |2.21    |                       |configs/jacinto_ai/ssd_mobilenet_fpn.py|[link](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse/pytorch/vision/object_detection/mmdetection/ssd/20200612-051942_ssd512_mobilenetv2_fpn) |
|VOC2007    |SSD with FPN     |RegNet800MF    |32             |512x512    |79.7     |79.0          |79.5        |5.64    |                       |configs/jacinto_ai/ssd_regnet_fpn.py   |[link](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse/pytorch/vision/object_detection/mmdetection/ssd/20200611-200124_ssd512_regnet800mf_fpn_bgr) |
|VOC2007    |SSD with FPN     |ResNet50       |32             |512x512    |80.5     |77.0          |79.5        |27.1    |                       |configs/jacinto_ai/ssd_resnet_fpn.py   |[link](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse/pytorch/vision/object_detection/mmdetection/ssd/20200614-234748_ssd512_resnet_fpn) |
|.
|VOC2007    |SSD              |VGG16          |32             |512x512    |79.8     |              |            |90.39   |                       |configs/pascal_voc/ssd512_voc0712.py   |         |

- *Estimated Inference Time in milli seconds on the Jacinto7/TDA4VM platform 
- Acc Float: MeanAP50(mAP) Accuracy in percentage in this case.
- Acc 8bit Calib: Same metric with 8bit quantization using PTQ/Calibration 
- Acc Float: Same metric with QAT

## References

[1] MMDetection: Open MMLab Detection Toolbox and Benchmark, https://arxiv.org/abs/1906.07155, Kai Chen, Jiaqi Wang, Jiangmiao Pang, Yuhang Cao, Yu Xiong, Xiaoxiao Li, Shuyang Sun, Wansen Feng, Ziwei Liu, Jiarui Xu, Zheng Zhang, Dazhi Cheng, Chenchen Zhu, Tianheng Cheng, Qijie Zhao, Buyu Li, Xin Lu, Rui Zhu, Yue Wu, Jifeng Dai, Jingdong Wang, Jianping Shi, Wanli Ouyang, Chen Change Loy, Dahua Lin

[2] SSD: Single Shot MultiBox Detector, https://arxiv.org/abs/1512.02325, Wei Liu, Dragomir Anguelov, Dumitru Erhan, Christian Szegedy, Scott Reed, Cheng-Yang Fu, Alexander C. Berg