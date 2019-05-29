---
permalink: /example/
title: "Exercise 1.1."
excerpt: "Exercise 1.1.1"
author_profile: false
redirect_from: 
  - /example/
  - /example.html
---

Intuition:
In constructing a probability space, we have to make sure of two things: does our sigma algebra work under the operations we normally
use with probability events? If it does, is the probability measure prescribed non-pathological, in the sense, that if we have measure
two bricks together or separately, do they add up to the same number?


In this exercise, we have to check so that $ ( \Omega, \mathcal{F}, \mathbb{P} ) $ is a probability space.

Sigma algebra
1. The empty set is countable, so it is contained in the sigma algebra.
2. $ \Omega $is uncountable, but it' completement, is countable, so it is in the sigma algebra.
3. Now take the countable set $ A \in \mathcal{F} $ By definition, $ A^C \in \mathcal{F} $.  The union of countable sets are countable.
 
Probability measure

1. We can verify by the definition that it indeed maps any element on $ [0,1], due to the fact that it can only map to 0 or 1.
2. We can indeed verify that $ P(\Omega) = 1 $, $ P(\emptyset) = 0 $.

Now we want to try to create a pathological case, where the measure is more than one. 
3. Fix a countable set $ A_{i}^C $ and $A_{j}^C$, we claim these are not distinct. Their union is $ A_{i}^C \cup A_{j}^c $ countable, that can be
transformed by the De Morgan identity to $ \{ A_{i} \cap A_{j} \} $ countable, which is a contradition, if these are distinct. In that case it follows that
there can be no pathologies.

Since the sigma algebra and probability measure conditions are fulfilled we have a probability space.  
