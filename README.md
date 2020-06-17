# Jacinto AI DevKit
Training & Quantization Tools For Embedded AI Development.

###### Notice: 
- **Our internal URLs changed on 2020 June 15**. If you cloned the repository before this date please do a fresh clone to avoid confusion. Without this, doing a ./git_submodule_update.sh may appear to succeed, but may not be actually updating the submodules.
- If you have not visited our landing page in github, please do so: [https://github.com/TexasInstruments/jacinto-ai-devkit](https://github.com/TexasInstruments/jacinto-ai-devkit)
- Some of the older modules such as caffe-jacinto, caffe-jacinto-models & acf-jacito are no longer included as submodules of this git repository. You can git clone/pull them separately using the links given below.
- **Issue Tracker for jacinto-ai-devkit:** You can file issues or ask questions at **e2e**: [https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit](https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit). While creating a new issue kindly include **jacinto-ai-devkit** in the tags (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- **Issue Tracker for TIDL:** [https://e2e.ti.com/support/processors/f/791/tags/TIDL](https://e2e.ti.com/support/processors/f/791/tags/TIDL). Please include the tag **TIDL** (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- If you do not get a reply within two days, please contact us at: jacinto-ai-devkit@list.ti.com

This repository provides various training **tools for AI**, including Deep Learning, traditional Machine Learning and Computer Vision. This github repository does not contain any code, but has submodule links that point to the code. 

Embedded AI, especially Embedded Inference of Deep Learning models is quite challenging - due to high compute requirements. We show several **low complexity** Deep Learning models that make  Inference on Low Power Embedded Platforms practical. We also have examples for **Quantization Aware Training** for 8-bit fixed point inference.

**Several of these models have been verified to work on [TI's Jacinto Automotive Processors](http://www.ti.com/processors/automotive-processors/tdax-adas-socs/overview.html)**. These tools and software are primarily intended as examples for learning and research.  

### Documentation
Detailed documentation is provided for each of the components. Please browse using links provided in the "Submodules" section below.

### Obtaining the code
After cloning this repository, execute the following command to pull the submodules.
```
./git_submodule_init.sh
```
Execute the following command to pull/update the submodules to get the latest changes. Note: do this once in a week or so to get the latest, as we update our submodules frequently.
```
./git_submodule_update.sh
```
If there is any issue with the above script, you can use the URLs given below to manually clone/pull the respositories.


### Model Zoo

We are in the process of building an Model Zoo that hosts **Training/Quantization/Inference Examples** and **DeepLearning Models** that are optimized for **speed, accuracy & fixed point quantization**. 

Start by browsing through the following sections.

**Jacinto-AI-MMDetection** - Several Object Detection Models - Training/Quantization/Testing
- [**Jacinto-AI-MMDetection Model Zoo**](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-mmdetection/browse/docs/jacinto_ai/jacinto_ai_object_detection_model_zoo.md)
- [Object Detection using Jacinto-AI-MMDetection Main Page](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-mmdetection/browse)
- [Quantization Aware Training with Jacinto-AI-MMDetection](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-mmdetection/browse/docs/jacinto_ai/quantization_aware_training.md)

**PyTorch-Jacinto-AI-DevKit** - Image Classification, Pixel2Pixel Prediction (Semantic Segmentation, Depth Estimation etc) & Quantization
- [**PyTorch-Jacinto-AI-DevKit Model Zoo**](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-jacinto-ai-devkit/browse/docs/Semantic_Segmentation.md)
- [PyTorch-Jacinto-AI-DevKit Main Page](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-jacinto-ai-devkit/browse/)
- [Quantization Aware Training with PyTorch-Jacinto-AI-DevKit](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytorch-jacinto-ai-devkit/browse/docs/Quantization.md)

### Submodules

Deep Learning Examples for Jacinto7 family of devices - e.g. [TDA4VM](http://www.ti.com/product/TDA4VM)<br>
- **Pytorch-Jacinto-AI-DevKit**: PyTorch based training of Image Classification, Semantic Segmentation, Depth Estimation, Motion Segmentation and various other Pixel2Pixel tasks, Multi-Task Learning and **Quantization Aware Training**.<br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/)<br>

- **Jacinto-AI-MMDetection**: PyTorch based **Object Detection** training - **(coming soon...)**. In the mean while you can train the SSD Object detector using [mmdetection](https://github.com/open-mmlab/mmdetection) and provide the model to Jacinto7 TIDL in a format that it specifies.<br>

- **TensorFlow2.0** based quantization examples - **(coming later...)**.<br>

Deep Learning and Traditional ML examples for Jacinto 6 family of devices - e.g. (TDA2x, TDA3x). These older modules are not included as submodules in this repo, but can be obtained using the links below.<br>
- **caffe-jacinto**: Our Caffe fork for training sparse CNN models including Object Detection and Semantic Segmentation models.<br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto/)<br>

- **caffe-jacinto-models**: Scripts and examples for training sparse CNN models for Image Classification, Object Detection and Semantic Segmentation.<br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto-models/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto-models/)<br>

- **acf-jacinto** - training tool for HOG/ACF/AdaBoost Object Detector (traditional machine learning based)<br>
-- Documentation: [link](https://git.ti.com/cgit/jacinto-ai/acf-jacinto/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/acf-jacinto/)<br>


### Notes: 
- **Each of those submodules have detailed documentation and separate LICENSE files.** Click on the links to open the documentation. 
- If you click on one of the links above - it will navigate to a repository hosted in **https://git.ti.com/jacinto-ai**. From there, you can click on one of the tabs to get more information on that repository. 
- For example, the **about** tab shows documentation. The **summary** tab lists all the branches, commit information and links for cloning that repository (i.e. if you would like to directly clone without using the above submodule command).


### What is New: 
- [2020-Jan-28] pytorch-jacinto-ai-devkit: Documentation and results for Depth Estimation has been added.<br>
- [2020-Jan-06] pytorch-jacinto-ai-devkit: Quantization documentation is updated. Trained Quantization using QuantTrainModule is now the recommended method of doing Quantization Aware Training and the use of QuantCalibrateModule is discouraged.


### License

Please see the [LICENSE](./LICENSE) file for more information about the license under which this repository is made available. The LICENSE file of each submodule is inside that submodule.