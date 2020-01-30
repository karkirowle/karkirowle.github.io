---
title: "Residual networks for resisting noise: analysis of an embeddings-based
spoofing countermeasure"
collection: publications
permalink: /publication/odyssey-2020
excerpt: 'This paper is about analysing a spoofing countermeasure under noisy conditions.'
date: 2020-01-20
venue: 'Speaker Odyssey 2020'
#paperurl: 'http://academicpages.github.io/files/paper1.pdf'
citation: 'Halpern, Kelly, van Son, Alexander (2020). &quot; Analysing an embeddings-based spoofing countermeasure in noise; <i>ODYSSEY 2020</i>. 1(1).'
---

This is our supplementary page for our paper "Residual networks for resisting noise: analysis of an embeddings-based spoofing countermeasure"

In this paper, we have presented multiple approaches for explainable audio.

*GradCAM-based examples*
The approaches below are based on the same principle as explainable machine learning techniques for computer vision applications.
The GradCAM technique is used to obtain a saliency map for the audio sample,  using the publicly available library keras-vis library.
The saliency map shows which parts of the CQT-spectrogram are the most
sensitive to the class activation decision. In other words, this
shows which parts are the most important.  This saliency map
can be used to threshold the spectrogram for its salient parts, as
it is just a ”2D array of importance”.  Finally, the new spectro-
gram can be resynthesised to generate audio using a Griffin-Lim
vocoder.

In the below examples you will first hear an original utterance from the evaluation set, then a resynthesised example, and finally
the explainable audio example. In most examples, you can hear that it is the rhythm of speech that seems to be the most important, as this
can be clearly identified from most of these audio samples. Categories, like example A12 shows that there is sometic a characteristic noise for
a particular spoofing category which is learned by our neural network.


 <table style="width:100%">
  <tr>
    <th>Spoofing class</th>
    <th>Audio</th>
  </tr>
  <tr>
    <td>Bonafide</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_-.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A07</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A07.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A08</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A08.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A09</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A09.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A10</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A10.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A11</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A11.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A12</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A12.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A13</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A13.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A14</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A14.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A15</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A15.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A16</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A16.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A17</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A17.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A18</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A18.wav" type="audio/wav">
</audio> 
</td>
  </tr>
  <tr>
    <td>A19</td>
    <td>
 <audio controls>
  <source src="/images/odyssey_audio/three_format_A19.wav" type="audio/wav">
</audio> 
</td>
  </tr>
</table> 

In these audio examples, we are exploiting a cocktail party effect to encourage focus on the acoustics, rather than
the semantics of the speech.

 <table style="width:100%">
  <tr>
    <th>Class boundary</th>
    <th>Bonafide (Far)</th>
    <th>Bonafide (Medium)</th>
    <th>Bonafide (Close)</th>
    <th>Spoof (Close)</th>
    <th>Spoof (Medium)</th>
    <th>Bonafide (Far)</th>
  </tr>
  <tr>
    <td>Bonafide-A07</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A07_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A07_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A07_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A07_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A07_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A07_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A08</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A08_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A08_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A08_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A08_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A08_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A08_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A09</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A09_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A09_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A09_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A09_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A09_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A09_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A10</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A10_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A10_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A10_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A10_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A10_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A10_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A11</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A11_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A11_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A11_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A11_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A11_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A11_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A12</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A12_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A12_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A12_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A12_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A12_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A12_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A13</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A13_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A13_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A13_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A13_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A13_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A13_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A14</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A14_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A14_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A14_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A14_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A14_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A14_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A15</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A15_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A15_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A15_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A15_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A15_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A15_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A16</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A16_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A16_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A16_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A16_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A16_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A16_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A17</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A17_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A17_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A17_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A17_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A17_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A17_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A18</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A18_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A18_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A18_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A18_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A18_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A18_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
  <tr>
    <td>Bonafide-A19</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A19_add_num_2000.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A19_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_bonafide_A19_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A19_add_num_0.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A19_add_num_1000.wav" type="audio/wav" >
</audio> 
</td>
    <td>
 <audio controls style="width: 50px;">
  <source src="/images/mean_audios/mean_audio_spoof_A19_add_num_2000.wav" type="audio/wav" >
</audio> 
</td>
  </tr>
</table> 





