---
layout: post
title: Jul 8, 2021 - Spiking Network Training (Algorithms)
---

Today, my work has been mostly focused on the investigation of potential training algorithms for SNNs. After a meeting about this topic with my grad student and Dr. Young, I explored the [SLAYER](https://arxiv.org/abs/1810.08646) and [EONS](https://www.osti.gov/servlets/purl/1649325) algorithms.

#### SLAYER

**S**pike **LAY**er **E**rror **R**eassignment in Time (SLAYER) is a training algorithm based off of traditional backpropogation techniques specifically designed for the broad temporal evaluation and optimization of SNNs. In layman's terms, SLAYER provides a benefit over previously existing methods of training SNNs which are only able to optimize over one moment in time. Since ANNs (the non-SNN kind) have no time domain and most training algorithms are based off insight from ANN training methods, AI researchers hadn't yet fully grasped the usage of the time domain present in SNNs for training.

I won't explain the algorithm itself because the paper (linked above) does quite a good job, and the results for accuracy are very promising. The paper, however, fails to address the power and time requirements for the algorithm to train to the level of accuracy they achieved, but insight suggests that a well implemented version of the SLAYER algorithm would be fairly energy efficient, at least compared to the next algorithm I explored, EONS.

#### EONS

**E**volutionary **O**ptimization for **N**euromorphic **S**ystems (EONS) is a genetic algorithm for the training of SNNs. Like traditional evolutionary algorithms, EONS is the idea that random variation applied to a set of randomly generated networks filtered by fitness will eventually provide a desired network. Since SNNs aren't traditional feedforward networks, this allows for some very heterodox, unusual, and sparse network architectures to arise.

![EONS algorithm]( https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/eons.png)

The code for this algorithm is still not released, but the idea is general enough for us to make our own implementation if desired. The main benefit of EONS over SLAYER is that it can be fully parallelized, as the algorithm doesn't work on only one network. This means we can throw our code at the massive number of computers that Georgia Tech has. The problem would be that the energy consumption would likely much higher than a SLAYER based approach.  

## General happiness (1-10)	

8

## General confidence (1-10)

8 

