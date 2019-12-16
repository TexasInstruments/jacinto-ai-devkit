# Jacinto AI DevKit

This repository provides various training tools for AI, including Deep Learning, traditional Machine Learning and Computer Vision. This repository does not contain any code, but has submodule links that point to the code. 

Embedded AI, especially Embedded Inference of Deep Learning models is quite challenging - due to high compute requirements. We show several low complexity Deep Learning models that make  Inference on Low Power Embedded Platforms practical. We also have examples of Calibration/Training to make models Quantization friendly.

Some the models and examples that we publish have been tested on Jacinto platforms - but they are also generic and can be used on a variety of Embedded Platforms. This code is primarily intended for learning and research. 

### Contents
- **PyTorch** based training of Object Detection, Semantic Segmentation (and a variety of similar Pixel2Pixel tasks), Multi-Task Learning, **Calibration for Quantization**, **Quantization Aware Training**.
- **TensorFlow2.0** based training and quantization examples (coming soon...)
- **Caffe** based training of Object Detection, Semantic Segmentation.
- **HOG/Adaboost** based training for Object Detection - i.e. using traditional ML.
 

### Obtaining the code
After cloning this repository, execute the following command to pull the submodules.
```
./git_submodule_update.sh
```
If there is any issue with the above script, you can visit [https://git.ti.com/jacinto-ai-devkit](https://git.ti.com/jacinto-ai-devkit ) and get the URLs to manually clone/pull the respositories.


### Submodules

- [**pytorch-jacinto-ai-devkit**](https://git.ti.com/cgit/jacinto-ai-devkit/pytorch-jacinto-ai-devkit/about/): PyTorch (deep learning framework) based training scripts, quantization tools.
- [**pytorch-mmdetection**](https://git.ti.com/cgit/jacinto-ai-devkit/pytorch-mmdetection/about/): PyTorch (deep learning framework) based Object Detection training
- [**caffe-jacinto**](https://git.ti.com/cgit/jacinto-ai-devkit/caffe-jacinto/about/) and [**caffe-jacinto-mdoels**](https://git.ti.com/cgit/jacinto-ai-devkit/caffe-jacinto-models/about/): caffe based training tools for sparse CNN models.
- [**acf-jacinto**](https://git.ti.com/cgit/jacinto-ai-devkit/acf-jacinto/about/) - training tool for HOG/ACF/AdaBoost Object Detector (traditional machine learning based)


### Notes: 
- **Each of those submodules have detailed documentation and separate LICENSE files.** Click on the links to open the documentation. 
- If you click on one of the links above - it will navigate to a repository hosted in **https://git.ti.com/jacinto-ai-devkit**. From there, you can click on one of the tabs to get more information on that repository. 
- For example, the **about** tab shows documentation. The **summary** tab lists all the branches, commit information and links for cloning that repository (i.e. if you would like to directly clone without using the above submodule command).


### License

Please see the [LICENSE](./LICENSE) file for more information about the license under which this repository is made available. The LICENSE file of each submodule is inside that submodule.