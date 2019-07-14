---
permalink: /iwae/
title: "Importance weighted autoencoders"
excerpt: "Importance weighted autoencoders"
author_profile: true
redirect_from: 
  - "/nmp/"
  - "/nmp.html"
---




The aim of this article are the following:

- revisit VAE,
- obtain a probabilistic understanding of VAEs (“Bayesian”),
- build intuition on what importance sampling is,
- descibe how IWAE builds on both to alleviate limitations of VAE.

Revisiting the variational autoencoders
---

Variational autoencoders are a type of neural networks which compresse
the distribution of $ p(x) $ into a lower dimensional distribution $ p(z) $.

Neural network compresses the data to a lower dimensional probability
density function in order to learn about structure.

![alt text](vae-gaussian.png "Logo Title Text 1")
Latent space is penalised by KL to have a form specified by or prior
(usually N (0, 1))

We so far looked at the VAE as a latent space regulariser,
L β-VAE = MSE/NLL + βKL(q(z|x)||p(z)).
(1)
where we have a reconstruction loss and a β parameter which can be
tuned with your own favourite technique:
Cross-validation
information criterions (AIC,BIC)

his is a recurring theme in Bayesian statistics - it is difficult to learn the
posterior distribution and the marginal distribution.
p(z|x) =
p(x, z)
p(x|z)p(z)
= R
p(x)
p(x, z)dz
(2)
The general reason for this is that we have to integrate highly
multidiensional functions, which is often analytically impossible and
computationally intractable. Solutions:
Markov Chain (Markov Chain Monte Carlo) - slow but exact
Variational Inference - faster but inexact


Choose a simpler form of the posterior. This makes marginal (more?)
tractable so we can optimise.

Conclusion: ELBO is strict if the variational distribution matches the
posterior exactly.