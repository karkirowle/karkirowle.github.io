---
permalink: /tf_install/
title: "Ultimate tensorflow install guide"
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

TODO: Another compatibility chart
https://docs.nvidia.com/deploy/cuda-compatibility/

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

The key to a good tensorflow installation is also rigour and testing. Every step if your installation can be tested.

* The compiler can be tested usually with ```gcc --version```
* nvcc can be tested with ```nvcc --version``` and building the deviceQuery file
* Python can be tested with ```python --version```
* Tensorflow is the most difficult test, because even if the GPU is detected, it might just randomly fail at all sorts of places. 

In terms of the operating system, Ubuntu will be better supported, but CUDA installation on Windows is a significantly better experience in my opinion.

## OS

Tensorflow according to my knowledge only works on 64-bit architectures.
So if you have 32-bit install, you should toss it immediately, you don't
want to realise that you have spent six hours installing something that
is useless.


## Headers


Check the headers on Ubuntu using

```
uname -r

```

```
sudo apt-get install linux-headers-$(uname -r)

```



## Compilers

The standard compiler for Linux distros will be gcc, for Windows you
typically never want to install only a compiler, rather you want to get
the Visual C++ Studio Build tools.

It is important in my experience to get the 2017 version. 


## cuDNN and CUDA failing on Linux

Because you don't know usually what CUDA or cuDNN version you are supposed
to use most of the time, you often get the following error message:


```
ImportError: libcudnn.Version: cannot open shared object file: No such file or director

```

Yes, this indicates most of the time that you have installed the wrong
version if you have a different number of cudnn. It is also possible that
the terminal you are running from haven't load the environment variables yet.
Typically, you should source them then.

```
source ~/.bashrc
```

Maybe it also good to check if the environment variables are right:

```
echo LD_LIBRARY_PATH
echo CUDA_HOME
```

Related StackOverflow [issue](https://stackoverflow.com/questions/41991101/importerror-libcudnn-when-running-a-tensorflow-program)

## Tensorflow package installing


If you are one of the lucky ones, then you just have to do

```
pip install tensorflow-gpu
```

That wiil identify which wheel is appropriate for your OS and python
version if there is. If there is not, it will return an error message.

If you need GPU acceleration, *never* do

```
pip install tensorflow
```

If you are not lucky, then you need a different package, and there is
little help on it, apart on the page https://www.tensorflow.org/install/pip

The general command you will need is


```
pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.14.0-cp35-cp35m-linux_x86_64.whl
```

But you might need to change the following things accordingly:
* 1.14.0 needs to be rewritten to the version that you want
* linux needs to be rewritten to your own OS (linux/windows)
* Python version matters too (cp36/cp27/cp24)
* linux_x86_64, win_amd_64

## Building from source

In order to build from source, you should really be cautious about
the version of Bazel that you are using. The command


```
./configure

```

will try to help you in that, and will not let you proceed usually, if
you are missing something. This is a good place to be superpunctual about
the versions, because effectively this is the place where everything
gets linked together.

The build process itself can freeze your computer, because it is using
a lot of RAM. The TensorFlow guide recommends the local ram resources flag in this
case, like:
```
-bazel build --local_ram_resources=2048 --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package

```

However, in older version of Bazel, this was not a separate flag. 

```
bazel build --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package --local_resources=2048,2,1

```

The above command does the job, but it also needs the amount of cores and
workers to be specified. If you have only a single core, you need to 2
to 1 in the command above.


## My favourite bugs

### Forgetting to add CUDA as environment variable

### Overwriting the video card driver

This is the most amusing part! While every GPU will require its own driver and NVIDIA knows that, the Ubuntu installation script will relentlessly try to update the
driver itself during the Ubuntu installation.

### Dual video card problems

My

```
sudo apt-get purge libvdpau-va-gl1 bumblebee* nvidia*
# Driver
sudo apt-get install nvidia-384 nvidia-settings nvidia-prime
```

### Windows environment variables

They exist and can be reached from
TODO: