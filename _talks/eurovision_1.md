---
title: "Summary on what is feasible and what is not feasible"
collection: talks
type: "Feasible"
permalink: /talks/eurovision
venue: "London School of Testing"
date: 2020-01-23
location: "London, UK"
---

Currently, the following approaches are considered the state-of-the-art singing AI methods:

- Mellotron: rhythm transfer, singing synthesis
- Voice conversion: GMM-based
- Voice conversion: GAN-based


 <pre><code class="language-mermaid">graph LR
OS--&gt;GPU
GPU--&gt;C
C--&gt;Python
Python--&gt;CUDA
CUDA--&gt;cuDNN
cuDNN--&gt;Tensorflow
</code></pre>
