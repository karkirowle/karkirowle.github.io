---
title: "An objective evaluation framework for pathological speech synthesis"
collection: publications
permalink: /publication/itg-2021-dysarthric-vc
excerpt: 'An objectiveevaluation framework for pathologicalspeech synthesis'
date: 2021-07-01
venue: 'ITG Conference on Speech Communication | 29.09.2021 - 01.10.2021 | Kiel'
---

###  Introduction
The need for systems that process pathological speech is increasingly pressing. However, pathological speech processing remains a highly challenging area, as our understanding of speech is largely limited to typical, healthy speech. Furthermore, development of pathological speech systems is currently hindered by the lack of a standardised objective evaluation framework. In this work, (1) we utilise existing detection and analysis techniques to propose a general framework for the evaluation of synthetic speech in a consistent manner, then (2) using our proposed framework, we develop a dysarthric voice conversion system (VC) using CycleGAN-VC, and we show that the developed system is able to exhibit different levels of speech intelligibility.
### Our proposed conversion scheme

<img src="/images/dysarthric_vc_icassp/Training3.png">

You can find the COLAB demo of our conversion system 
[by clicking here](https://colab.research.google.com/drive/1PPH_jnxrKvXvUziNNY4fwBjmCcgDO79r?usp=sharing).
Please note that the demo uses librosa's phase vocoder instead of Praat's PSOLA, while the model is
trained with Praat's PSOLA, so somewhat inferior performance is expected compared to the
experiments. 

### Our proposed evalution system for rapid development

<img src="/images/dysarthric_vc_icassp/evaluation_system.png">

### Voice conversion results


 <table style="width:100%">
  <tr>
    <th>Speaker</th>
    <th>Original speech</th>
    <th>Converted speech</th>
    <th>Ground truth</th>
  </tr>
          <tr>
    <td>M01</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/WLOZJkH3rjYhKjy/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
      <source src="/images/dysarthric_vc_icassp/M01_B1_C1_M5.wav" type="audio/wav">
      </audio> 
</td>
  </tr>
            <tr>
    <td>M04</td>
    <td>
             <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/OQ1Rb7FdjHebnze/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
          <source src="/images/dysarthric_vc_icassp/M04_B1_C1_M5.wav" type="audio/wav">
          </audio> 
</td>
  </tr>
            <tr>
    <td>M05</td>
    <td>
             <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/MbqW7mm5XcI47ih/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
    <source src="/images/dysarthric_vc_icassp/M05_B1_C1_M5.wav" type="audio/wav">
    </audio> 
</td>
  </tr>
             <tr>
    <td>M07</td>
    <td>
         <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/xx27WrEIgl6dh3Q/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
        <source src="/images/dysarthric_vc_icassp/M07_B1_C1_M5.wav" type="audio/wav">
        </audio> 
</td>
  </tr>
        <tr>
    <td>M08</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/N8PzHFiGjJVXvP7/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
        <source src="/images/dysarthric_vc_icassp/M08_B1_C1_M5.wav" type="audio/wav">
        </audio> 
</td>
  </tr>
      <tr>
    <td>M09</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/LZF7NQX5kC2Shak/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
            <source src="/images/dysarthric_vc_icassp/M09_B1_C1_M5.wav" type="audio/wav">
            </audio> 

</td>
  </tr>
        <tr>
    <td>M10</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/Upgqp1fp15PR4g6/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
            <source src="/images/dysarthric_vc_icassp/M10_B1_C1_M5.wav" type="audio/wav">
                        </audio> 

</td>
  </tr>
          <tr>
    <td>M11</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/yUWnBBkskzRXwdy/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
            <source src="/images/dysarthric_vc_icassp/M11_B1_C1_M5.wav" type="audio/wav">
            </audio> 

</td>
  </tr>
            <tr>
    <td>M12</td>
    <td>
            <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/qaRi2nuYgdz2auN/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
                <source src="/images/dysarthric_vc_icassp/M12_B1_C1_M5.wav" type="audio/wav">
                </audio> 
</td>
  </tr>
    <tr>
    <td>M14</td>
    <td>
        <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/FZA06txFIhxVipR/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
            <source src="/images/dysarthric_vc_icassp/M14_B1_C1_M5.wav" type="audio/wav">
            </audio> 
</td>
  </tr>
    <tr>
    <td>M16</td>
    <td>
        <audio controls>
  <source src="/images/dysarthric_vc_icassp/CM08_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/0GhzPfy3LVRHLny/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
    <source src="/images/dysarthric_vc_icassp/M16_B1_C1_M5.wav" type="audio/wav">
   </audio>  
</td>
  </tr>
          <tr>
    <td>F02</td>
    <td>
     <audio controls>
  <source src="/images/dysarthric_vc_icassp/CF04_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/4UsgSDRBF1VPjfm/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
  <source src="/images/dysarthric_vc_icassp/F02_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
  </tr>
            <tr>
    <td>F03</td>
    <td>
         <audio controls>
  <source src="/images/dysarthric_vc_icassp/CF04_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/T9F2ej0ZhXreaw9/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
  <source src="/images/dysarthric_vc_icassp/F03_B1_C1_M5.wav" type="audio/wav">
  </audio> 

</td>
  </tr>
        <tr>
    <td>F04</td>
    <td>
         <audio controls>
  <source src="/images/dysarthric_vc_icassp/CF04_B1_C1_M5.wav" type="audio/wav">
</audio> 
</td>
    <td>
 <audio controls>
  <source src="https://surfdrive.surf.nl/files/index.php/s/otObdZtOg9go5ij/download" type="audio/wav">
</audio> 
</td>
    <td>
     <audio controls>
  <source src="/images/dysarthric_vc_icassp/F04_B1_C1_M5.wav" type="audio/wav">
  </audio> 
</td>
  </tr>
</table> 

### Citation

Currently, no official pre-print or print of the work exists. For now, use the following
citation if you have to reference the work:

```bibtex
@misc{halpern2021evaluation,
    title={An objective evaluation framework for pathological speech synthesis},
    author={Bence Mark Halpern and Julian Fritsch and Enno Hermann and Rob van Son and Odette Scharenborg and Mathew.-Magimai Doss},
    year={2021},
    primaryClass={eess.AS}
}
```