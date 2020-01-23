---
title: "Summary on what is feasible and what is not feasible"
collection: talks
type: "Feasible"
permalink: /talks/eurovision
venue: "London School of Testing"
date: 2020-01-23
location: "London, UK"
---

There are two main AI approaches for synthesising singing (speech):

- Text to speech (TTS)
- Voice conversion or style transfer (VC)

The current state-of-the art in TTS is Tacotron-2, which needs 6 hours of data to learn a new voice. It has to be
good quality, but not neccesarily studio quality: 22050 kHz sampling frequency, mono, 16-bit depth rate. This is probably
not feasible now.

Voice conversion usually needs 5-20 mins of training data. However, this means that some source sentences need to be sung by
someone (perhaps an AI), and they have to sing the same thing as the target sentences. If an AI sings it, in theory there is
still the freedom of "choosing what to sing" (what lyrics). But note, because the source quality is lower, the target quality will
likely to be also lower quality.

<center>
 <pre><code class="language-mermaid">graph LR
SourceVoice--&gt;SourcePitch
SourceVoice--&gt;SourceSpectrum
SourceVoice--&gt;SourceBAP
SourcePitch--&gt;|VC|TargetPitch
SourceSpectrum--&gt;|VC|TargetSpectrum
SourceBAP--&gt;|VC|TargetBAP
TargetPitch--&gt;TargetVoice
TargetSpectrum--&gt;TargetVoice
TargetBAP--&gt;TargetVoice
</code></pre>
</center>
My proposals are the following:

(1) **Mellotron**. We can use Willie's style, but a pre-trained AI singing voice using Mellotron's rhythm transfer. 

<center>
 <pre><code class="language-mermaid">graph LR
Text--&gt;|Tacotron2|Speech
Willie--&gt;|Mellotron|WilliePitch
Willie--&gt;|Mellotron|WillieRhythm
Speech--&gt;|Mellotron|AISING
WilliePitch--&gt;|Mellotron|AISING
WillieRhythm--&gt;|Mellotron|AISING
</code></pre>
</center>


<table style="width:100%">
  <tr>
    <th>Original</th>
    <th>Mellotron transfer</th>
    <th>VC</th>
  </tr>
  <tr>
    <td>
 <audio controls>
  <source src="/images/originals/100034.wav" type="audio/wav">
</audio>
</td> 
<td>
 <audio controls>
  <source src="/images/mellotron_examples/100034.wav" type="audio/wav">
</audio>
</td>
<td>
 <audio controls>
  <source src="/images/vc_audio/100034_VC.wav" type="audio/wav">
</audio> 
</td>
</tr>

  <tr>
    <td>
 <audio controls>
  <source src="/images/originals/100035.wav" type="audio/wav">
</audio>
</td> 
<td>
 <audio controls>
  <source src="/images/mellotron_examples/100035.wav" type="audio/wav">
</audio>
</td>
<td>
 <audio controls>
  <source src="/images/vc_audio/100035_VC.wav" type="audio/wav">
</audio> 
</td>
</tr>

  <tr>
    <td>
 <audio controls>
  <source src="/images/originals/100036.wav" type="audio/wav">
</audio>
</td> 
<td>
 <audio controls>
  <source src="/images/mellotron_examples/100036.wav" type="audio/wav">
</audio>
</td>
<td>
 <audio controls>
  <source src="/images/vc_audio/100036_VC.wav" type="audio/wav">
</audio> 
</td>
</tr>
</table> 



(2) **Voice conversion**. If we want to aim more ambitious, then we can try to use the Mellotron sentences as *source sentences*
and Wilie sentences as *target sentences* during training. Then, we can make a Mellotron sing something else, i.e. copy the rhythm and the pitch of an existing singing.  

There are several frameworks to perform voice conversion, Gaussian Mixture Model (more traditional machine learning) or Generative Adversarial Networks (hard AI). 

