# Jacinto AI DevKit

This repository provides various training **tools for AI**, including Deep Learning, traditional Machine Learning and Computer Vision. This github repository does not contain any code, but has submodule links that point to the code. 

Embedded AI, especially Embedded Inference of Deep Learning models is quite challenging - due to high compute requirements. We show several **low complexity** Deep Learning models that make  Inference on Low Power Embedded Platforms practical. We also have examples for **Quantization Aware Training** for 8-bit fixed point inference.

**Several of these models have been verified to work on [TI's Jacinto Automotive Processors](http://www.ti.com/processors/automotive-processors/tdax-adas-socs/overview.html)**. These tools and software are primarily intended as examples for learning and research.  

### Obtaining the code
After cloning this repository, execute the following command to pull the submodules.
```
./git_submodule_update.sh
```
If there is any issue with the above script, you can visit [https://git.ti.com/jacinto-ai-devkit](https://git.ti.com/jacinto-ai-devkit ) and get the URLs to manually clone/pull the respositories.


### Submodules

Deep Learning Examples for Jacinto 7 family of devices - e.g. [TDA4VM](http://www.ti.com/product/TDA4VM)
- [**pytorch-jacinto-ai-devkit**](https://git.ti.com/cgit/jacinto-ai-devkit/pytorch-jacinto-ai-devkit/about/): PyTorch based training of Image Classification, Semantic Segmentation and various other Pixel2Pixel tasks, Multi-Task Learning and **Quantization Aware Training**.
- [**pytorch-mmdetection**](https://git.ti.com/cgit/jacinto-ai-devkit/pytorch-mmdetection/about/): PyTorch based Object Detection training **(coming soon...)**
- **TensorFlow2.0** based training and quantization examples **(coming soon...)**

Deep Learning and Traditional ML examples for Jacinto 6 family of devices - e.g. (TDA2x, TDA3x)
- [**caffe-jacinto**](https://git.ti.com/cgit/jacinto-ai-devkit/caffe-jacinto/about/) and [**caffe-jacinto-mdoels**](https://git.ti.com/cgit/jacinto-ai-devkit/caffe-jacinto-models/about/): Caffe based training tools for sparse CNN models.
- [**acf-jacinto**](https://git.ti.com/cgit/jacinto-ai-devkit/acf-jacinto/about/) - training tool for HOG/ACF/AdaBoost Object Detector (traditional machine learning based)

#### **Issue Tracker**: 
- You can file issues or ask questions at **e2e**: [https://e2e.ti.com/support/j721e/f/1026/tags/jacinto_2D00_ai_2D00_devkit](https://e2e.ti.com/support/j721e/f/1026/tags/jacinto_2D00_ai_2D00_devkit).<br>
- The part number should be filled in as **TDA4VM**. Also, kindly include **jacinto-ai-devkit** in the tags (at the end of the page as you create a new issue) so that we get notified quickly. 
- If you do not get a reply within two days, you can contact us at: jacinto-ai-devkit@list.ti.com

### Notes: 
- **Each of those submodules have detailed documentation and separate LICENSE files.** Click on the links to open the documentation. 
- If you click on one of the links above - it will navigate to a repository hosted in **https://git.ti.com/jacinto-ai-devkit**. From there, you can click on one of the tabs to get more information on that repository. 
- For example, the **about** tab shows documentation. The **summary** tab lists all the branches, commit information and links for cloning that repository (i.e. if you would like to directly clone without using the above submodule command).


### What is New: 
- [2020-Jan-6] pytorch-jacinto-ai-devkit: Quantization documentation is updated. Trained Quantization using QuantTrainModule is now the recommended method of doing Quantization Aware Training and the use of QuantCalibrateModule is discouraged.

### License

Please see the [LICENSE](./LICENSE) file for more information about the license under which this repository is made available. The LICENSE file of each submodule is inside that submodule.