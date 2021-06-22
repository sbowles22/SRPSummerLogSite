---
layout: post
title: Jun 22, 2021 - More Lorentz Attractors
---

Today, I got back into working on the Lorentz chaotic attractor. Using my progress from yesterday and some guidance from both the masters student helping me out and Dr. Young, I have been able to demo working examples of the Lorentz chaotic attractor on both the Nengo framework and the RASP FPAA tool chain.

#### Nengo

Using Nengo-GUI, I was able to demo a version of the Lorentz chaotic attractor. I then used a Jupyter notebook on my vm to demo a version of the chaotic attractor without the need for GUI elements. ![The 3-D output of the Nengo demo](https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/lorentz_attractor_nengo.png) 

#### RASP FPAA

Additionally, I was able to set up an .ovm file containing an Ubuntu **12.04** machine connected to a virtual FPAA using virtualbox.  This allowed me to access the RASP GUI tools and load a demo of the Lorentz attractor that runs on the virtual FPAA. I was having some trouble getting the machine set up, but there was just a password for the proper account that needed to be given to me by Dr. Young.

[Video](https://youtu.be/lcK3Exfb3po)

#### Meeting

We were also able to meet once again today, where we discussed our coming plans and the Telluride conference coming this Sunday, 6/27 through 7/16.

## What have I learned?

Spike LAYer Error Reassignment (SLAYER) is an algorithm for the training of SNNs, and it was based off of backpropogation. The math is too complicated to explain here, but it gets to leverage several unique techniques to provide commendable accuracy for SNNs.

## Tangible accomplishments/results  (If any)

Yes! The working demos have their photos/videos above.

## Plans for coming week

Work on completing the Nengo-GUI tutorials and begin reading 'How to Build a Brain'

## General happiness (1-10)	

8

## General confidence (1-10)

8 
