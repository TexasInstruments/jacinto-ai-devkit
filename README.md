# Jacinto AI DevKit
Training & Quantization Tools, Model Zoo & Accuracy Benchmarks For Embedded AI Development.

<hr>

## Notice: 
- This is our main documentation landing page, please add this link to your browser's favourites: [https://github.com/TexasInstruments/jacinto-ai-devkit](https://github.com/TexasInstruments/jacinto-ai-devkit)
- **Issue Tracker for jacinto-ai-devkit:** You can file issues or ask questions at **e2e**: [https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit](https://e2e.ti.com/support/processors/f/791/tags/jacinto_2D00_ai_2D00_devkit). While creating a new issue kindly include **jacinto-ai-devkit** in the tags (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- **Issue Tracker for TIDL:** [https://e2e.ti.com/support/processors/f/791/tags/TIDL](https://e2e.ti.com/support/processors/f/791/tags/TIDL). Please include the tag **TIDL** (as you create a new issue, there is a space to enter tags, at the bottom of the page). 
- If you do not get a reply within two days, please contact us at: jacinto-ai-devkit@list.ti.com

<hr>


## Introduction
Embedded Inference of Deep Learning models is quite challenging - due to high compute requirements. This repository provides various **tools for AI**, including Deep Learning, traditional Machine Learning and Computer Vision. We show several **low complexity** Deep Learning models that make  Inference on Low Power Embedded Platforms practical. We also have examples for **Quantization Aware Training** for 8-bit fixed point inference.

Several of the Deep Learning models described in these repositories have been verified to work on [**TI's Jacinto Automotive Processors**](http://www.ti.com/processors/automotive-processors/tdax-adas-socs/overview.html) using [TI Deep Learning Library (TIDL)](https://software-dl.ti.com/jacinto7/esd/processor-sdk-rtos-jacinto7/latest/exports/docs/psdk_rtos_auto/docs/user_guide/sdk_components.html#ti-deep-learning-library-tidl) that is part of [Processor SDK RTOS for Jacinto7](https://software-dl.ti.com/jacinto7/esd/processor-sdk-rtos-jacinto7/latest/exports/docs/psdk_rtos_auto/docs/user_guide/index.html). 

These tools and software are primarily intended as examples for learning and research.  

Each repository listed below has a documentation page and a separate summary page containing git clone/pull URLs. Please browse those links to read the documentation as well as to get the git URLs for cloning the repositories. This github repository does not contain any code, but has links that point to the actual repositories containing code. 

<hr>


## Model Zoo & Accuracy Benchmark
- **Jacinto-AI-ModelZoo**: Large collection of pre-trained models that are verified to work on our platform. We also information on how to train some of the important models, and also the complexity and what accuracy to expect. <br>
-- Documentation: [**link**](http://git.ti.com/cgit/jacinto-ai/jacinto-ai-modelzoo/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/jacinto-ai-modelzoo/) <br>

- **Jacinto-AI-Benchmark**: Accuracy benchmarking of Deep Learning models is a difficult task. We make it easy for our platform with a Python package that runs on PC as well as on our EVM. The pre-trained models in our Model Zoo are supported off-the-shelf in this benchmark code. Accuracy benchmark of custom models can also be done easily with just a few lines of code. <br>
-- Documentation: [**link**](http://git.ti.com/cgit/jacinto-ai/jacinto-ai-benchmark/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/jacinto-ai-benchmark/) <br>

- **Pre-Imported/Compiled Model Artifacts**: This package provides Pre-Imported/Compiled Model Artifacts created using Jacinto-AI-ModelZoo and Jacinto-AI-Benchmark repositories. These artifacts can be used in multiple ways: (1) [Jypyter Notebook examples in TIDL](https://software-dl.ti.com/jacinto7/esd/processor-sdk-rtos-jacinto7/latest/exports/docs/tidl_j7_02_00_00_07/ti_dl/docs/user_guide_html/md_tidl_notebook.html) (2) For inference/benchmark in the above Jacinto-AI-Benchmark repository (3) Other platforms (to be announced) <br>
-- Documentation & download: [**link**](https://software-dl.ti.com/jacinto7/esd/modelzoo/latest/docs/html/index.html) <br>


## Training Repositories
Deep Learning Examples for Jacinto7 family of devices - e.g. [TDA4VM](http://www.ti.com/product/TDA4VM) <br>
- **Pytorch-Jacinto-AI-DevKit**: PyTorch based training of Image Classification, Semantic Segmentation, Depth Estimation, Motion Segmentation and various other Pixel2Pixel tasks, Multi-Task Learning and [Quantization Aware Training](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/docs/Quantization.md). <br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/) <br>

- **PyTorch-MMDetection**: PyTorch based **Object Detection** training/quantization <br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/pytorch-mmdetection/) <br>

- **TensorFlow2.0** based quantization examples - **(coming later...)**. <br>

Deep Learning and Traditional ML examples for Jacinto 6 family of devices - e.g. (TDA2x, TDA3x). These older modules are not included as submodules in this repo, but can be obtained using the links below. <br>
- **Caffe-Jacinto**: Our Caffe fork for training sparse CNN models including Object Detection and Semantic Segmentation models. <br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto/) <br>

- **Caffe-Jacinto-Models**: Scripts and examples for training sparse CNN models for Image Classification, Object Detection and Semantic Segmentation. <br>
-- Documentation: [**link**](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto-models/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/caffe-jacinto-models/) <br>

- **Acf-Jacinto** - training tool for HOG/ACF/AdaBoost Object Detector (traditional machine learning based) <br>
-- Documentation: [link](https://git.ti.com/cgit/jacinto-ai/acf-jacinto/about/) <br>
-- git clone/pull URLs: [link](https://git.ti.com/cgit/jacinto-ai/acf-jacinto/) <br>

<hr>


## Model Quantization
Quantization (especially 8-bit Quantization) is important to get best throughput for inference. Quantization can be done using either **Post Training Quantization (PTQ)** or **Quantization Aware Training (QAT)**.

[TI Deep Learning Library (TIDL)](https://software-dl.ti.com/jacinto7/esd/processor-sdk-rtos-jacinto7/latest/exports/docs/psdk_rtos_auto/docs/user_guide/sdk_components.html#ti-deep-learning-library-tidl) that is part of the [Processor SDK RTOS for Jacinto7](https://software-dl.ti.com/jacinto7/esd/processor-sdk-rtos-jacinto7/latest/exports/docs/psdk_rtos_auto/docs/user_guide/index.html) natively supports PTQ - TIDL can take floating point models and can quantize them using advanced calibration methods. 

We have  guidelines on how to choose models and how train them to get best accuracy with Quantization. It is unlikely that there will be significant accuracy drop with **PTQ** if these guidelines are followed. In spite of this, if there are models that have significant accuracy drop with quantization, it is possible to improve the accuracy using **QAT**. Please read more details in the [pytorch-jacinto-ai-devkit](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about) and its documentation on **[Quantization](https://git.ti.com/cgit/jacinto-ai/pytorch-jacinto-ai-devkit/about/docs/Quantization.md)**.

<hr>


## Notes: 
- If you click on one of the links above - it will navigate to a repository hosted in **https://git.ti.com/jacinto-ai**. From there, you can click on one of the tabs to get more information on that repository. 
- For example, the **about** tab shows documentation. The **summary** tab lists all the branches, commit information and links for git clone/pull that repository.
- Each of those repositories also have separate LICENSE files. 

<hr>


## What is New:
- [2020-August-05] **pytorch-mmdetection** is made available with several training/quantization/evaluation examples for object detection. See the links for more information.
- [2020-August-05]: We do not use *git submodule* anymore. You can clone or update the repositories mentioned in the **Repositories** section below by *git clone* or *git pull*.
- [2020-June-15]: **Our internal URLs changed**. If you cloned the repository before this date please do a fresh clone to avoid confusion. Without this, doing a ./git_submodule_update.sh may appear to succeed, but may not be actually updating the submodules.
- [2020-January-28] pytorch-jacinto-ai-devkit: Documentation and results for Depth Estimation has been added.
- [2020-January-06] pytorch-jacinto-ai-devkit: Quantization documentation is updated. Trained Quantization using QuantTrainModule is now the recommended method of doing Quantization Aware Training and the use of QuantCalibrateModule is discouraged.

<hr>


## License
Please see the [LICENSE](./LICENSE) file for more information about the license under which this landing repository is made available. The LICENSE file of each repository mentioned here is inside that repository.