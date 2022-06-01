---
permalink: /oral_cancer_corpus/
title: "Oral cancer speech corpus"
excerpt: "Oral cancer speech corpus"
author_profile: true
redirect_from: 
  - "/corpus/"
  - "/corpus.html"
---


Synthesising, understanding or recognising pathological speech are currently big problems. This dataset is aimed to those
people who want to investigate new avenues of solving this problem, but lack the data to do so. 

This site's purpose is to inform interested people about the changes and recent developments in the oral cancer speech
dataset, and provide links to the publications using it.

| Name of link          | URL     |                                                                                  For whom? |
|-----------------------|:-------------:|-------------------------------------------------------------------------------------------:|
| Official Zenodo Page  | [link](https://zenodo.org/record/3732322#.X1O1WYZS9FM)|                                       contains Kaldi features too for ease of reproduction |
| Full corpus           | [link](https://drive.google.com/drive/folders/1EwkEIEx4VMPzqR_csrpNX1Ysi9W67J7J?usp=sharing)      |        for people who are just interested in the data and want to process in their own way |
| Detector and analysis partition | [link](https://drive.google.com/drive/folders/19USw1RkUv6u3JjZHjlBLMUyZoBefrv4p?usp=sharing)   |                              aimed for people who want to improve on the baselines quickly |
| Detector and analysis code | [link](https://github.com/karkirowle/oral_cancer_analysis)    |  for people who want to reproduce the GMM/LASSO experiments or just understand the methods |
| Detector and analysis paper (arXiV) | [link](https://arxiv.org/pdf/2007.14205.pdf) |                      for people interested in our conclusions regarding oral cancer speech |
| ASR journal           | [link](https://www.sciencedirect.com/science/article/pii/S0167639322000620) | oral cancer ASR task |
| Metadata for the dataset | [link](https://docs.google.com/spreadsheets/d/1upXS1KeV7MQux-hRqKBo0r4T6x1EUQBw_rUSVjiJQGI/edit?usp=sharing) |                                                 metadata about the speakers in the dataset |
| Transcriptions        | [link](https://drive.google.com/file/d/1smz-eiYQo-UcS9oz29K1rNCI7O-mLMcm/view?usp=sharing) |                                                                               for ASR task |
| Kaldi recipes         | [link](https://github.com/syfengcuhk/oral_cancer_asr) |                                                                               for ASR task |


<iframe src="https://drive.google.com/file/d/1X_zpsvnjQIPV75itT0hOKaaH2ih0ICDZ/preview" width="640" height="480"></iframe>



Please if you use this dataset, cite either the official Interspeech version:

```bibtex
@inproceedings{Halpern2020,
  author={Bence Mark Halpern and Rob van Son and Michiel van den Brekel and Odette Scharenborg},
  title={{Detecting and Analysing Spontaneous Oral Cancer Speech in the Wild}},
  year=2020,
  booktitle={Proc. Interspeech 2020},
  pages={4826--4830},
  doi={10.21437/Interspeech.2020-1598},
  url={http://dx.doi.org/10.21437/Interspeech.2020-1598}
}
```

or alternatively the arXiv preprint of it:

```bibtex
@misc{halpern2020detecting,
    title={Detecting and analysing spontaneous oral cancer speech in the wild},
    author={Bence Mark Halpern and Rob van Son and Michiel van den Brekel and Odette Scharenborg},
    year={2020},
    eprint={2007.14205},
    archivePrefix={arXiv},
    primaryClass={eess.AS}
}
```

or alternatively the journal paper in SpeCom:

```bibtex
@article{HALPERN202214,
title = {Low-resource automatic speech recognition and error analyses of oral cancer speech},
journal = {Speech Communication},
volume = {141},
pages = {14-27},
year = {2022},
issn = {0167-6393},
doi = {https://doi.org/10.1016/j.specom.2022.04.006},
url = {https://www.sciencedirect.com/science/article/pii/S0167639322000620},
author = {Bence Mark Halpern and Siyuan Feng and Rob {van Son} and Michiel {van den Brekel} and Odette Scharenborg},
keywords = {Automatic speech recognition, Pathological speech, Low-resource, Oral cancer, Phoneme analysis},
abstract = {In this paper, we introduce a new corpus of oral cancer speech and present our study on the automatic recognition and analysis of oral cancer speech. A two-hour English oral cancer speech dataset is collected from YouTube. Formulated as a low-resource oral cancer ASR task, we investigate three acoustic modelling approaches that previously have worked well with low-resource scenarios using two different architectures; a hybrid architecture and a transformer-based end-to-end (E2E) model: (1) a retraining approach; (2) a speaker adaptation approach; and (3) a disentangled representation learning approach (only using the hybrid architecture). The approaches achieve a (1) 4.7% (hybrid) and 7.5% (E2E); (2) 7.7%; and (3) 2.0% absolute word error rate reduction, respectively, compared to a baseline system which is not trained on oral cancer speech. A detailed analysis of the speech recognition results shows that (1) plosives and certain vowels are the most difficult sounds to recognise in oral cancer speech — this problem is successfully alleviated by our proposed approaches; (3) however these sounds are also relatively poorly recognised in the case of healthy speech with the exception of/p/. (2) recognition performance of certain phonemes is strongly data-dependent; (4) In terms of the manner of articulation, E2E performs better with the exception of vowels — however, vowels have a large contribution to overall performance. As for the place of articulation, vowels, labiodentals, dentals and glottals are better captured by hybrid models, E2E is better on bilabial, alveolar, postalveolar, palatal and velar information. (5) Finally, our analysis provides some guidelines for selecting words that can be used as voice commands for ASR systems for oral cancer speakers.}
}
```

**Licensing**

The YouTube data is available under fair use. The dataset is available under the [Creative Commons 4.0 license](https://creativecommons.org/licenses/by/4.0/legalcode).
We encourage research and educational use of the dataset, but commercial use is not allowed.

**Changelog**

*2022-06-01*: Fixed changelog. ASR journal paper links are up.

*2021-04-20*: ASR task recipe is up

*2021-03-04*: Uploaded the transcriptions. Kaldi recipe soon (after Interspeech deadlines :) )

*2020-09-19*: Uploaded the metadata (protocol) file for the dataset

*2020-09-12*: Uploaded the dataset in a Google Drive version to allow ease of use and access.



**Funding**

This project has received funding from the European Union’s Horizon 2020 research and innovation programme under Marie Sklodowska-Curie grant agreement No 766287. The Department of Head and Neck Oncology and surgery of the Netherlands Cancer Institute receives a research grant from Atos Medical (Horby, Sweden),
which contributes to the existing infrastructure for quality of life research.

<img src="/images/eu_flag.jpeg"> <img src="/images/logo-tapas.png" height="86">
