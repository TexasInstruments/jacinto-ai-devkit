# Jacinto AI DevKit
Training & Quantization Tools, Model Zoo & Accuracy Benchmarks For Embedded AI Development.


## Notice: 
- This is our main documentation landing page, please add this link to your browser's favourites: [https://github.com/TexasInstruments/jacinto-ai-devkit](https://github.com/TexasInstruments/jacinto-ai-devkit)
- **Issue Tracker for jacinto-ai-devkit:** You can file issues or ask questions at **e2e**: [https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit](https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit). While creating a new issue kindly include **jacinto-ai-devkit** in the tags (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- **Issue Tracker for TIDL:** [https://e2e.ti.com/support/processors/f/791/tags/TIDL](https://e2e.ti.com/support/processors/f/791/tags/TIDL). Please include the tag **TIDL** (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- If you do not get a reply within two days, please contact us at: jacinto-ai-devkit@list.ti.com


## Introduction
Embedded Inference of Deep Learning models is quite challenging - due to high compute requirements. This repository provides various **tools for AI**, including Deep Learning, traditional Machine Learning and Computer Vision. We show several **low complexity** Deep Learning models that make  Inference on Low Power Embedded Platforms practical. We also have examples for **Quantization Aware Training** for 8-bit fixed point inference.

Several of these models have been verified to work on [**TI's Jacinto Automotive Processors**](http://www.ti.com/processors/automotive-processors/tdax-adas-socs/overview.html). These tools and software are primarily intended as examples for learning and research.  

Jacinto AI DevKit consists of two parts: <br>
1. Training Repositories <br>
2. Model Zoo (Trained Models) & Accuracy Benchmark <br>

Each repository listed below has a documentation page and a separate summary page containing git clone/pull URLs. Please browse those links to read the documentation as well as to get the git URLs for cloning the repositories. This github repository does not contain any code, but has links that point to the actual repositories containing code. 


## Training Repositories
Deep Learning Examples for Jacinto7 family of devices - e.g. [TDA4VM](http://www.ti.com/product/TDA4VM)<br>
- **Pytorch-Jacinto-AI-DevKit**: PyTorch based training of Image Classification, Semantic Segmentation, Depth Estimation, Motion Segmentation and various other Pixel2Pixel tasks, Multi-Task Learning and **Quantization Aware Training**.<br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/)<br>

- **PyTorch-MMDetection**: PyTorch based **Object Detection** training/quantization<br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/about/)<br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/)<br>

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


## Model Zoo & Accuracy Benchmark
- **Jacinto-AI-ModelZoo** - Collection of several trained models that are optimized for **speed & accuracy**.<br>
-- Documentation: [**link**](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse)<br>
-- git clone/pull URLs: [link](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse)<br>

- **Jacinto AI Benchmark** - The benchmark repository provides scripts, examples and tutorials for model import, model inference, accuracy benchmarking. We also list benchmark results for several models.
-- Documentation: [**link**](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-benchmark/browse)<br>
-- git clone/pull URLs: [link](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-benchmark/browse)<br>

We eventually plan to make the the benchmark repository download the required models automatically from the Model Zoo - so at that point the Model Zoo repository need be cloned at all - but for now, both these repositories need to be cloned.


## Notes: 
- If you click on one of the links above - it will navigate to a repository hosted in **https://git.ti.com/jacinto-ai**. From there, you can click on one of the tabs to get more information on that repository. 
- For example, the **about** tab shows documentation. The **summary** tab lists all the branches, commit information and links for git clone/pull that repository.
- Each of those repositories also have separate LICENSE files. 


## What is New:
- [2020-August-05] **pytorch-mmdetection** is made available with several training/quantization/evaluation examples for object detection. See the links for more information.

- [2020-August-05]: We do not use *git submodule* anymore. You can clone or update the repositories mentioned in the **Repositories** section below by *git clone* or *git pull*.

- [2020-June-15]: **Our internal URLs changed**. If you cloned the repository before this date please do a fresh clone to avoid confusion. Without this, doing a ./git_submodule_update.sh may appear to succeed, but may not be actually updating the submodules.

- [2020-January-28] pytorch-jacinto-ai-devkit: Documentation and results for Depth Estimation has been added.<br>

- [2020-January-06] pytorch-jacinto-ai-devkit: Quantization documentation is updated. Trained Quantization using QuantTrainModule is now the recommended method of doing Quantization Aware Training and the use of QuantCalibrateModule is discouraged.


## License
Please see the [LICENSE](./LICENSE) file for more information about the license under which this landing repository is made available. The LICENSE file of each repository mentioned here is inside that repository.