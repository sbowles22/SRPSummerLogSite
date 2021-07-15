---
layout: post
title: Jul 12, 2021 - Braindrop Workshop with Terry
---

Today, I mostly worked with the Braindrop neuromorphic system, an architecture designed around the use of high-level interfaces to automatically reconfigure hardware. Additionally, I was assigned a survey to read on SNN hardware implementations.

### Braindrop

The main benefit to Braindrop over other neuromorphic systems is its abstraction of programming to a high level. As written in the original paper's abstract:

> Previous neuromorphic systems were programmed at the neurosynaptic level and required expert knowledge of the hardware to use. In stark contrast, Braindrop's computations are specified as coupled nonlinear dynamical systems and synthesized to the hardware by an automated procedure.

In layman's terms, Braindrop is specifically designed to allow for the automation of compiling networks to the hardware. This type of abstraction is very common in the machine learning field and in computer science in general. Although your computer cannot directly read Python code, it is equipped with a variety of interpreters, compilers, and assemblers to translate more understandable language into opcodes for the actual hardware. 

Braindrop is built primarily on Nengo, and so to program Braindrop, fairly stock Nengo code can be used, theoretically only importing one additional library to configure the backend. An example of this can be seen [here](http://99.250.220.231:9100/notebooks/docs/tutorial/Introduction%20to%20nengo_brainstorm.ipynb), but a password is needed to access the system (and I'm not toatally sure I should put it out on the Internet), so I will just paste some code snippets.

```python
import nengo
import numpy as np
import nengo_brainstorm

model = nengo.Network()
with model:
    stim = nengo.Node(lambda t: np.sin(t*2*np.pi))
    ens = nengo.Ensemble(n_neurons=256, dimensions=1)
    
    nengo.Connection(stim, ens)
    p = nengo.Probe(ens, synapse=0.05)
    p_stim = nengo.Probe(stim, synapse=0.05)

sim = nengo.Simulator(model,
                                 #precompute_inputs=True,
                                 )
sim.run(6)
```

The important line here is `import nengo_brainstorm`, and as such all of the mapping to the hardware was done automatically. Using this code to graph the results:

```python
output = sim.data[p]
ideal = nengo.synapses.Lowpass(0.025).filt(sim.data[p_stim])
#ideal = np.array(sim.data[p_stim])

rmse = np.sqrt(np.mean((ideal-output)**2))

import pylab
pylab.figure(figsize=(14,6))
pylab.plot(sim.trange(), output)
pylab.plot(sim.trange(), ideal)
pylab.title('RMSE: %1.4f' % rmse)
pylab.show() 
```

we can see the identity function being computed by Braindrop.

![Braindrop identity function](https://raw.githubusercontent.com/sbowles22/SRPSummerLogSite/master/images/braindrop_identity.png) 

## General happiness (1-10)	

8

## General confidence (1-10)

5

