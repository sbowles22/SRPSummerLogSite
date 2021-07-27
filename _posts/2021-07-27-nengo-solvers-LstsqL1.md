---
layout: post
title: Jul 27, 2021 - nengo.solvers.LstsqL1
---

Today we met to discuss the SLCA on FPAA paper by Shapero and discovered the existence of a [least squares L1 and L2 regularization solver](https://www.nengo.ai/nengo/v2.8.0/frontend_api.html#nengo.solvers.LstsqL1) (LASSO solver) in the Nengo core library.

### Don't Reinvent the Wheel

During a discussion with Terry, we were told that Nengo had a built in LASSO solver that solves for the proper decoders. It is built on the scikit-learn `ElasticNet` class, and it allows us to skip all of the tedious steps in the recreation of the LASSO algorithm itself. While it would be interesting to create a version of LASSO that solves for encoders, that is likely out of our scope.   

## General happiness (1-10)	

8

## General confidence (1-10)

8

