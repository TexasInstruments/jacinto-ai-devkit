# Jacinto AI Model Hub

Each set of models have a different Jupyter Notebook and the accuracy of these models can be tested from within the notebook.

## Requirements
- Basic requirement: Anaconda Python 3.7 

- Please clone [pytidl-benchmark](https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/pytidl-benchmark/browse) and install it by following its instructions.

- Install additional the requirements via:
```
pip install modelhub/requirements.txt
```

Please start Jupyter notebook from your Python commandline by: 
```
jupyter notebook
```

## PyTorch Models

This benchmark uses the following datsets. They should be available at the following locations:
- ImageNet dataset should be available in the path modelhub/dependencies/datasets/imagenet
- Cityscapes dataset should be available in the path modelhub/dependencies/datasets/cityscpaes/data
- COCO dataset should be available in the path modelhub/dependencies/datasets/coco

This benchmark also needs several onnx models. They are expected to be available in the folder modelhub/dependencies/modelzoo for now. But eventually, the models will be fetched from http links available at https://bitbucket.itg.ti.com/projects/JACINTO-AI/repos/jacinto-ai-modelzoo/browse.

TIDL is assumed to be available in modelhub/dependencies/c7x-mma-tidl

#### PyTorch Image Classification
Please use the Jupyter notebook [pytorch_image_classification.ipynb](pytorch_image_classification.ipynb)

#### PyTorch Image Segmentation
Please use the Jupyter notebook [pytorch_image_segmentation.ipynb](pytorch_image_segmentation.ipynb)

#### PyTorch Object Detection
Please use the Jupyter notebook [pytorch_object_detection.ipynb](pytorch_object_detection.ipynb)