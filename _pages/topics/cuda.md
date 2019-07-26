---
permalink: /tf_install/
title: "Ultime tensorflow install guide"
excerpt: "Ultimate tensorflow install guide"
author_profile: true
redirect_from: 
  - "/nmp/"
  - "/nmp.html"
---

## Intro

I think there is something so interesting about how difficult it is to install Tensorflow, while
there is an impressive amount of effort being done to make it work, and make it easier. This guide is
not a comprehensive guide, but simply is made by myself out of pure interest. I try to point out some philosophical
things in this guide too, which is meant partly as a criticism of design decisions, common sources of errors.

## The compatibility problem

There is no such thing as an official Tensowflow compatibility chart, or at least not something that is easy to do find with
my skills of Google, so it is probably going to cause some difficulties to laymen installing Tensorflow.
The closest I found is this one https://stackoverflow.com/questions/50622525/which-tensorflow-and-cuda-version-combinations-are-compatible
I will try to collect here all the important ones.

But this is outright what causes the problem in most installations. Because you don't know what are the possible routes, you
often go down a difficult route (build from source, works with downgraded versions) or even worse, an impossible route.

## Layout of the installation
 <pre><code class="language-mermaid">graph LR
OS--&gt;GPU
GPU--&gt;C
C--&gt;Python
Python--&gt;CUDA
CUDA--&gt;cuDNN
cuDNN--&gt;Tensorflow
</code></pre>

This is an outline of the most important steps of the installation you have to be aware of. In my experience the most limiting step
will be nearly always your video card's CUDA compute capability. For example, under compute cability 5.0, most guides advise you to not even
start and buy a better GPU, but it is a non-solution. Going down the beaten route will likely to cause some kind of weird bug in your installation,
which you want to avoid.

Thus, I would advise the following. Determine the CUDA compute capability version and work from backwards. 


