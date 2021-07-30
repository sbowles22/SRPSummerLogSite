---
layout: post
title: Jul 29, 2021 - Spiking Heidelberg Digits Dataset
---

Recently, I have been working on training a SNN on the Spiking Heidelberg Digits (SHD) dataset. Once the proof of concept works in torch, I plan to move the project to Nengo and run it on Braindrop.

### Spiking Heidelberg Digits

SHD is a dataset detailed [here](https://zenkelab.org/resources/spiking-heidelberg-datasets-shd/). In short, it is a event-based audio dataset with roughly 10k elements (pre-split 80/20 train/test) of 20 classifications of spoken digits in both English and German. These are some visualized examples of elements:

![SHD visualization graphs](https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/shd.png) 

This dataset was chosen because it is bigger than the Boston housing dataset commonly used for LASSO, but the  resulting network will still likely be able to fit on our hardware.

### Results

* A 50 epoch test was able to produce:

  ```python
  Training accuracy: 0.788
  Test accuracy: 0.557
  ```

  ![SHD 50 epoch graph](https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/shd_50.png) 

* A 200 epoch run was able to produce:

  ```python
  Training accuracy: 0.983
  Test accuracy: 0.626
  ```

  ![SHD 200 epoch graph](https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/shd_200.png)	

## General Happiness (1-10)

8

## General confidence (1-10)

8

